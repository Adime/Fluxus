require 'rubygems'
require 'rdiscount'
require 'html2markdown'

first_block = <<END
<h3>Documentation</h3>
<h4>Basic Use</h4>
<p>Start a new Flash project.  Put the &#8217;scripting&#8217; folder from the ZIP file in the same directory as your FLA.</p>
<p>Write the following in your Actionscript window:</p>
<pre>import scripting.*;

var codestring:String = "<span style="color: #3366ff;">var x = 10; var y = x + 20;</span>" ;

var s:Scanner = new Scanner(codestring);
var p:Parser = new Parser(s);

var vm:VirtualMachine = new VirtualMachine();

try
{
	vm.setByteCode(p.parse());
}
// If an error occurs here, it is likely a syntax error in the source code.
catch (vme:VMSyntaxError)
{
	trace(vme.message);
}

var result = vm.execute();</pre>
<p>Run the program, and inside the virtual machine, the variable &#8216;y&#8217; will be set to 30.</p>

<p>However, this is useless if we can&#8217;t see it.  Before you run <em>vm.execute()</em>, let&#8217;s hook up the VirtualMachine to the outside world by letting it use the trace statement;</p>
<pre>import scripting.*;

var codestring:String = "<span style="color: #3366ff;">var x = 10; var y = x + 20; trace(y)</span>" ;

var s:Scanner = new Scanner(codestring);
var p:Parser = new Parser(s);

var vm:VirtualMachine = new VirtualMachine();

vm.getGlobalObject().trace = trace;

try
{
	vm.setByteCode(p.parse());
}
catch (vme:VMSyntaxError)
{
	trace(vme.message);
}

var result = vm.execute();</pre>
<p>By attaching objects or functions to the properties of the VirtualMachine&#8217;s global object, you let the scripting engine make use of those objects or functions.  Now, when you run this, the output window of your Flash will report &#8216;30&#8242;.</p>
<p>Objects, including library objects, can be attached as well:</p>

<pre>vm.getGlobalObject().player = myplayerobject;</pre>
<pre>// This will enable Math.floor, Math.sin, etc.. for your scripting engine
vm.getGlobalObject().Math = Math;</pre>
<p>What is <em>result</em> used for?  <em>Result</em> contains the exit code of the scripting program being run.  If vm.execute returns false, then the program ran to the end.  If it returns true, then the program is still in progress, and was suspended (see below).</p>
<h4>Language</h4>
<p>The scripting language is a mostly faithful copy of ECMAScript from the ActionScript 2 era.  It supports</p>
<ul>

<li> variables</li>
<li>arrays</li>
<li>objects and properties</li>
<li><em>if</em>-tests</li>
<li><em>while</em> loops and <em>for</em> loops</li>

<li><em>break</em> and <em>continue</em></li>
<li><em>with </em>blocks</li>
</ul>
<p>Note that not all features are included; it does not implement</p>
<ul>
<li><em>try/catch/finally</em></li>
<li><em>for.. in</em> loops</li>

<li>the <em>new </em>operator</li>
</ul>
<p>Note that while the new operator is not included, new arrays and objects can be created by the code:</p>
<pre><span style="color: #3366ff;">var newarray = [];</span></pre>
<pre><span style="color: #3366ff;">var newobject = {};</span></pre>
<h4>New Features</h4>
<p>The scripting language also includes some special language features.</p>
<ul>
<li><em>loop</em> statement</li>

<li><em>suspend</em>/<em>yield</em></li>
<li><em>coroutine</em> type functions</li>
</ul>
<p>The <em>loop</em> statement is a simple infinite loop.  Note that by itself, that&#8217;s not a useful feature; but it&#8217;s meant to be combined with the other new language features, such as suspend.</p>
<pre><span style="color: #3366ff;">loop
{
    updateGameScripting();
    suspend;
}</span></pre>

<p><em>Suspend</em> (or <em>yield</em>, which is a synonym) will pause the virtual machine and cause <em>vm.execute()</em> to exit with a return code of true.  If vm.execute() is then called again, the program will pick up where it left off and continue to run.</p>
<p>Here is an example how you can use suspending to make routines that get further input from the player.</p>
<pre>// Code in your Flash project
function askquestion(question)
{
	// Assume that these are custom movie clips being manipulated
	questiondialog.questionfield.text = question;
	questiondialog.visible = true;
	questiondialog.okbutton.addEventListener('click',onAnswerQuestion);
}

function onAnswerQuestion(e:Event)
{
	questiondialog.visible = false;
	vm.getGlobalObject()._engineanswer = questiondialog.answerfield.text;
}

vm.getGlobalObject()._engineaskquestion = askquestion;
<span style="color: #3366ff;">
// Scripting code
coroutine getinput(question)
{
	_engineaskquestion(question);
	suspend;

	// Now that we are back, onAnswerQuestion in the main Flash
	// has already set _engineanswer for us.

	return _engineanswer;
}</span>
<span style="color: #3366ff;">
// Note the use of underscores in the "engine" functions and variables.
// This is mainly to disguise the inner workings of your scripting from modders;
// More seriously-written code would preparse what a modder writes, for instance to keep
// them from overwriting or redeclaring important variables, or using suspend when
// the engine wouldn't know how to resume the code.

// Of course, if the scripting engine is entirely for the programmer's use, they
// can name things how they please.

</span>
<span style="color: #3366ff;">var playername = getinput("What is your name?");</span></pre>
<p>There are some important limitations to when and where you can suspend a scripting program.</p>
<ul>
<li>You can suspend code on the top level of your script (i.e. not inside any functions.)</li>
<li>You can not suspend code that is inside a <em>function</em>.  A VM function is essentially a wrapped Actionscript function that asks the virtual machine to process some bytecodes.  (Note that this is why it&#8217;s so easy to attach external functions to the VM&#8217;s global object - because VM and AS functions are peers.)  However, much like how you can&#8217;t stop an AS function midway through, you can&#8217;t stop VM code that&#8217;s written as a function.</li>

<li>However, if instead of a <em>function</em>, you use a <em>coroutine</em>, you can suspend inside the coroutine.  A <a href="http://en.wikipedia.org/wiki/Coroutine">coroutine</a> is a special Object, not a wrapped function, that the VM is capable of suspending.</li>
<li>Finally, if you want to suspend a coroutine, you must not have called that coroutine from inside a function.  There needs to be a chain of coroutines from the top on down, if you want to be able to suspend.</li>
</ul>
<p>If the rules here are a bit too complex (for either you, or more importantly, for modders), just use coroutines exclusively instead of functions when writing code where you might need to stop for input.  Alternately, use this command:</p>
<pre>var s:Scanner = new Scanner(codestring);
var p:Parser = new Parser(s);</pre>
<pre>p.setForceCoroutine(true);</pre>

<p><em>setForceCoroutine</em>, when used, will cause any reference to a function to be compiled to a coroutine instead, simplifying the issue.</p>
<h4>Reusing Compiled Code</h4>
<p>Once the virtual machine has executed once, you can use the compiled code as a library of functions to call on freely.</p>
<p>If you want to call on a compiled function, simply access the global object and use that function&#8217;s name.</p>
<pre>vm.getGlobalObject().mycompiledfunction(myarg,myarg2);</pre>
<p>If you want to call on a coroutine, use <em>runCoroutine</em> instead, and pass it a string of the coroutine&#8217;s name, and an optional Array of arguments.</p>

<pre>vm.runCoroutine("mycoroutinename",[myarg1,myarg2]);</pre>
<p>Note that you should be sure to run <em>execute</em> first to be certain that these functions and coroutines are moved from the source code to the VM&#8217;s global object.</p>
<p>If your functions and coroutines change the values of variables at the global level of the code, those changes will be preserved from call to call.</p>
</p>
<h4>Optimizing</h4>
<p>It is possible to optimize the code you compile, by passing an optional argument to <em>Parser.parse()</em>- the virtual machine that you are targetting.</p>
<pre>vm.setByteCode(p.parse(vm));</pre>
<p>If you do this, the array of bytecodes that <em>parse()</em> produces cannot be used in any other virtual machine.  However, the code will run with an estimated 40% speed boost.</p>
END

parser = HTMLToMarkdownParser.new
parser.feed(first_block) 

puts parser.to_markdown
