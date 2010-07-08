# FluxusProject

The FluxusProject is a library registry and associated tooling for the AS3 / Flex community, we intend to provide a service much like RubyGems, Perl CPAN and PHP Pear.

- - -

### FluxDb

FluxDb is the online registry where you can find libraries and their source or _swc_ file. Fluxus handles libraries which have been made available via svn, git, zip (source or swc) or swc.

Library authors will be able to add new libraries to the registry in a number of ways, from a simple manifest file or simply by entering the library details over the web. Just sign up to add a library.

### Flux

The `flux` tool is a command line client interface to the FluxDb, it can search for, install and uninstall libraries which are listed in FluxDb. It requres `svn`, `git` and `unzip` on the client machine.

### FluxGui

The fluxGui is a GUI front end to interact with your local Fluxus based AS3/Flex libraries, search, install, uninstall etc.

- - -

### Roadmap

The FluxDb, in it's alpha state, is now online as of 2010/06/22 @ [http://fluxdb.fluxusproject.org/](http://fluxdb.fluxusproject.org/)

Flux/FluxGui client tools are still in development, `flux` likely release is late August, early September 2010. FluxGui to be announced.

Each module of the FluxusProject will be under continuous beta for the forseeable future.

- - -

### Contribution

Feel free to fork the project from [http://github.com/jasonm23/fluxus](http://github.com/jasonm23/fluxus). Pull requests are accepted if you add a feature, The test coverage for the core project is pretty abysmal, however, contributors are expected to provide test coverage for any significant code additions.

If you would like to contribute in non code ways, we are happy to receive help in other forms, web and graphic design, documentation, screencasts and tutorial authors etc, not to mention evangelists and people who have a strong opinion on the FlashPlatform, dependency management and so on...

Ultimately we'd like to make this as much of a community resource as possible.

- - -

### Notes

FluxDb is written in Ruby, using the Rails and Hobo frameworks.

The `flux` and FluxGui client tools are written in Python. (you won't find their code online, not just yet anyway.)

- - -

### About the name

The name fluxus is taken from the latin for Flow, plus it's a nod to the Fluxus art movement. (so now you know.)

----

## Zipped Libraries

We'd like to discourage authors from distribution of OpenSource libraries in Zip format, however we do understand the reasons why people may prefer to distribute source this way. The following is a list of all the libraries which use .Zip distro.

*  Flash punk  -  http://flashpunk.net/downloads/FlashPunk_V1_00.zip
*  Sandy 3d  -  http://sandy.googlecode.com/files/Sandy3-1-2_src_docs_rev1141.zip
*  As3 animation system 2.1  -  http://www.boostworthy.com/code_shared/boostworthy_animation_v2_1.zip
*  Animation package  -  http://sourceforge.net/projects/animationpackag/files/animationpackag/AnimationPackage_v3_00_alpha1/AnimationPackage_v3_00_alpha1.zip/download
*  Gtween  -  http://gskinner.com/libraries/gtween/GTween_v2_01.zip
*  Hydrotweenhydrosequence  -  http://blog.hydrotik.com/wp-content/HydroTween_HydroSequence_rev39.zip
*  Rabbittween  -  visit homepage
*  Popshapes  -  http://lab.andre-michelle.com/swf/f9/popshapes/source.zip
*  Collision detection kit  -  http://collisiondetectionkit.googlecode.com/files/CollisionDetectionKit_v15.zip
*  Quickbox2d  -  http://actionsnippet.com/qb2d/QuickBox2D_1.1.zip
*  Pulse particle system  -  http://pulse-particle.googlecode.com/files/PulseParticle-1.0.0016-src.zip
*  Orion  -  http://blog.coursevector.com/downloads/Orion-1-0-0.zip
*  Flare  -  http://downloads.sourceforge.net/project/prefuse/flare/alpha-20090124/prefuse.flare-alpha-20090124.zip?use_mirror=transact
*  Distortiontweener  -  http://evolve.reintroducing.com/_source/classes/as3/DistortionTweener/DistortionTweener.zip
*  As3 parametric curve library  -  http://www.algorithmist.net/singularity.zip
*  Wordpress xml-rpc api  -  http://as3wordpress.absentdesign.com/flash_wordpress_api_v1_01.zip
*  Fdot  -  http://onflash.org/f/FDOT_BUILD_032.zip
*  Tempolite  -  http://blog.coursevector.com/downloads/TempoLite-3-0-4.zip
*  Textflowpro  -  http://www.gskinner.com/blog/assets/TextFlowPro.zip
*  Xmlrpc  -  http://danielmclaren.net/files/public/2007/as3_xmlrpc.zip
*  AS3Gif  -  http://as3gif.googlecode.com/files/GIFPlayer%200.6.zip

If your library is on the list and you would like to consider placing it into SVN or Git, somewhere, users of the Fluxus project will be able to interact with it more easily.