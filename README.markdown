# FluxusProject

The FluxusProject is a library registry and associated tooling for the AS3 / Flex community, we intend to provide a service much like RubyGems, Perl CPAN and PHP Pear.

- - -

### FluxDb

FluxDb is the online registry where you can find libraries and their source or _swc_ file. Fluxus handles libraries which have been made available via svn, git, zip (source or swc) or swc.

Library authors will be able to add new libraries to the registry via a simple manifest file, which provides details of the library and it's code repository (or downloadable assets).

### Flux

The `flux` tool is a command line client interface to the FluxDb, it can search for, install and uninstall libraries which are listed in FluxDb. It requres `svn`, `git` and `unzip` on the client machine.

### FluxGui

The fluxGui is a GUI front end to interact with your local Fluxus based AS3/Flex libraries, search, install, uninstall etc.

- - -

### Roadmap

The FluxDb, in it's alpha state, is now online as of 2010/06/22.

Flux/FluxGui client tools are still in development, `flux` likely release is late August, early September 2010. FluxGui to be announced.

Each module of the FluxusProject will be under continuous beta for the forseeable future.

- - -

### Contribution

Feel free to fork the project from http://github.com/jasonm23/fluxus. Pull requests are accepted if you add a feature, The test coverage for the core project is pretty abysmal, however, contributors are expected to provide test coverage for any significant code additions.

If you would like to contribute in non code ways, we are happy to receive help in other forms, web and graphic design, documentation, screencasts and tutorial authors etc, not to mention evangelists and people who have a strong opinion on the FlashPlatform, dependency management and so on...

Ultimately we'd like to make this as much of a community resource as possible.

- - -

### Notes

FluxDb is written in Ruby, using the Rails and Hobo frameworks.

The `flux` and FluxGui client tools are written in Python. (you won't find their code online, not just yet anyway.)

- - -

### About the name

The name fluxus is taken from the latin for Flow, plus it's a nod to the Fluxus art movement. (so now you know.)