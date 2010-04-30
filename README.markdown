Fluxus
======

Fluxus is intended to be an ecosystem for Flex/AS3 libraries, the client is inteded to be a shell based process, with the following features...

* Parse a project for library references (from import statements initially) and  ensure that the appropriate SWC or source library is available in the classpath. 

* Maintain a local reference for remote SWC and source libraries.

* Download (on manual demand or by other user determinded policy)

* Notify user of unknown libraries in a project.

The server component is intended to be hosted from a single location, although mirroring is under consideration. Server features include.

* Supply clients with current database (in a format to be determined)

* Allow authenticated users to provide updates to the database via REST interface.

The server will be entirely REST/RPC based (JSON or XMLRPC is likely to be the messaging format, other formats may be considered). Traffic will be plain-text over a standard socket. API will be published to allow development of 3rd party tools.

Roadmap
-------

Until Fluxus is live no further features will be considered, using the API we envisage, it will be a simple job to create a variety of web based database browsers. This will allow the community to see the libraries available on FLuxus.

As a preliminary exercise, the Fluxus team will locate as many 3rd party AS3 libraries as possible. The list available at http://wonderfl.net/libraries and the  project list at http://www.libspark.org/wiki/WikiStart/en. Of course, we will be very happy to receive updates and info from developers of any Open Source AS3 libraries.
