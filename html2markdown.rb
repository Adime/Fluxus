require 'sgml-parser'

# A class to convert HTML to markdown. Based on html2textile.rb by James Stewart
# 
# Read more at http://jystewart.net/process/2007/11/converting-html-to-textile-with-ruby
#
# Authors::   Jasonm23@gmail.com 
# License::   Distributes under the same terms as Ruby

# This class is an implementation of an SGMLParser designed to convert
# HTML to markdown.
# 
# Example usage:
#
#   require 'html2markdown'
#   parser = HTMLToMarkdownParser.new
#   parser.feed(input_html)
#   puts parser.to_markdown
class HTMLToMarkdownParser < SGMLParser
  
  attr_accessor :result
  attr_accessor :in_block
  attr_accessor :data_stack
  attr_accessor :a_href
  attr_accessor :in_ul
  attr_accessor :in_ol
  attr_accessor :in_pre
  
  def initialize(verbose=nil)
    @output = String.new
    self.in_block = false
    self.result = []
    self.data_stack = []
    super(verbose)
  end
  
  # Normalise space in the same manner as HTML. Any substring of multiple
  # whitespace characters will be replaced with a single space char.
  # If however, we are in a pre block, we leave whitespace alone.
  def normalise_space(s)
    if(in_pre)
      s.to_s.gsub(/^/, '    ')
    else
      s.to_s.gsub(/\s+/x, ' ')
    end
  end
  
  def make_block_start_pair(tag, attributes)
    attributes = attrs_to_hash(attributes)
    write("\n\n#{tag} ")
    start_capture(tag)
  end
  
  def make_block_end_pair
    stop_capture_and_write
    write("\n\n")
  end
  
  def make_quicktag_start_pair(tag, wrapchar, attributes)
    attributes = attrs_to_hash(attributes)
    write([" ", "#{wrapchar}"])
    start_capture(tag)
  end

  def make_quicktag_end_pair(wrapchar)
    stop_capture_and_write
    write([wrapchar, " "])
  end
  
  def write(d)
    if self.data_stack.size < 2
      self.result += d.to_a
    else
      self.data_stack[-1] += d.to_a
    end
  end
          
  def start_capture(tag)
    self.in_block = tag
    self.data_stack.push([])
  end
  
  def stop_capture_and_write
    self.in_block = false
    self.write(self.data_stack.pop)
  end

  def handle_data(data)
    write(normalise_space(data).strip) unless data.nil? or data == ''
  end

  %w[1 2 3 4 5 6].each do |num|
    define_method "start_h#{num}" do |attributes| 
      make_block_start_pair("#" * num.to_i, attributes)
    end
    
    define_method "end_h#{num}" do
      make_block_end_pair
    end
  end

  PAIRS = { 'blockquote' => '>' }
  QUICKTAGS = { 'b' => '**', 'strong' => '__', 'i' => '*', 'em' => '_' }
  
  PAIRS.each do |key, value|
    define_method "start_#{key}" do |attributes|
      make_block_start_pair(value, attributes)
    end
    
    define_method "end_#{key}" do
      make_block_end_pair
    end
  end
  
  QUICKTAGS.each do |key, value|
    define_method "start_#{key}" do |attributes|
      make_quicktag_start_pair(key, value, attributes)
    end
    
    define_method "end_#{key}" do
      make_quicktag_end_pair(value)
    end
  end
  
  def start_code(attrs)
    if !self.in_pre
      write(" `")
      start_capture("code")
    end
  end
  
  def end_code
    if !self.in_pre
      write("` ")
      stop_capture_and_write
    end
  end
  
  def start_pre(attrs)
  	self.in_pre = true
  	start_capture("pre")
  	write("\n\n    ")
  end
  
  def end_pre
    self.in_pre = false
    stop_capture_and_write
    write("\n\n\n\n")
  end
  
  def start_p
      write("\n\n")
      start_capture("p")
  end
  
  def end_p
      stop_capture_and_write
      write("\n\n")
  end
  
  def start_ol(attrs)
    write("\n\n")
    self.in_ol = true
  end

  def end_ol
    self.in_ol = false
    write("\n\n")
  end

  def start_ul(attrs)
    write("\n\n")
    self.in_ul = true
  end

  def end_ul
    self.in_ul = false
    write("\n\n")
  end
  
  def start_li(attrs)
    if self.in_ol
      write("1. ")
    else
      write("* ")
    end
    
    start_capture("li")
  end

  def end_li
    stop_capture_and_write
    write("\n")
  end

  def start_a(attrs)
    attrs = attrs_to_hash(attrs)
    self.a_href = attrs['href']      
    if self.a_href:
      if self.a_href.match(/^#.*/) == nil
        write(" [")
        start_capture("a")
      else
        self.a_href = nil
      end
    end
  end

  def end_a
    if self.a_href:
      stop_capture_and_write
      write(["](", self.a_href, ") "])
      self.a_href = false
    end
  end

  def attrs_to_hash(array)
    array.inject({}) { |collection, part| collection[part[0].downcase] = part[1]; collection }
  end

  def start_img(attrs)
    attrs = attrs_to_hash(attrs)
    write([" ![", attrs["alt"], "](", attrs["src"], ") "])
  end
  
  def end_img
  end 

  def start_br(attrs)
    write("\n\n")
  end

  def start_hr(attrs)
    write("\n\n- - -\n\n")
  end
  
  # Return the markdown after processing
  def to_markdown
    result.join
  end   
  
end