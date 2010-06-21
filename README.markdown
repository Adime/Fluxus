# Fluxus

Fluxus is intended to be an ecosystem for Flex/AS3 libraries, 

It will consist of an online registry of library metadata, with API hooks for client side tools, and a reference level client tool(s). The initial client will be a command line tool written in Python. (Windows executable via py2exe, Mac and Linux to use Python2.5)

Initial Project aims:

* Provide a central resource for Flex, Air and AS3 libraries.

* Allow library authors to send a project manifest (perhaps Maven POM or other standardised project description) to the registry for inclusion.

* Provide a client API and reference tool to allow downloading and searching of libraries within the registry. 

Current progress:

We are in the process of compiling an initial library registry, we aim to have completed the first stage of this phase by Aug 2010.

Once complete the registry will be browsable online and will provide source links (git/svn/swc/zip) and the src path location within the source tree, in addition to more useless metadata (e.g. description, keywords/tags, licence type.)

Only libraries which are covered by one of the standard OSS licences will be included: MIT, GPL, Apache, BSD etc.

## What's happening right now!

The FluxusProject has a blog at [http://blog.fluxusproject.org](http://blog.fluxusproject.org) and tweets to: [@fluxusproject](http://twitter.com/fluxusproject)

The registry database just went live (22nd June 2010) at [http://fluxdb.fluxusproject.org/](http://fluxdb.fluxusproject.org/)