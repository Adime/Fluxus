BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20100620055747');
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" text, "created_at" datetime, "updated_at" datetime, "user_id" integer, "library_id" integer);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('users',1);
INSERT INTO "sqlite_sequence" VALUES('libraries',295);
CREATE TABLE "libraries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "summary" varchar(255), "description" text, "package" varchar(255), "repository" varchar(255), "sourcepath" varchar(255), "license" varchar(255), "host" varchar(255), "homepage" varchar(255), "docs" varchar(255), "tags" varchar(255), "creator" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "libraries" VALUES(1,'Papervision P3D','Papervision3D is an open source 3D engine for the Flash platform','  ![](http://pv3d.org/Papervision3DLogo.png) 

 Getting started and other questions: [http://forum.papervision3d.org](http://forum.papervision3d.org) 

','svn','http://papervision3d.googlecode.com/svn/trunk/','','MIT licence','http://code.google.com','http://papervision3d.googlecode.com/','http://papervision3d.googlecode.com/svn/trunk/as3/trunk/docs/index.html','3d, graphics','','2010-05-19 12:49:48','2010-06-19 00:25:54');
INSERT INTO "libraries" VALUES(2,'SiON','an excellent sound library for FlashPlayer 10','SiON is an excellent library that provides a suite of classes for sound synthesis.

Sound library for FlashPlayer 10, The PCM/FM/PSG sound module emulator, MML(Music Macro Language) compiler/sequencer and sound effectors are included.','svn','http://www.libspark.org/svn/as3/SiOPM/trunk/',NULL,'custom open source - attribution','http://www.libspark.org','http://www.libspark.org/wiki/keim/SiON_e','http://www.libspark.org/htdocs/as3/sion/','audio, sound, synth, synthesizer, music','','2010-05-19 12:51:30','2010-06-05 13:19:03');
INSERT INTO "libraries" VALUES(3,'Parsley','Application framework for Flex/Flash/AIR','Parsley is an application framework for Flex/Flash/AIR applications written in AS3.
Spicelib is an AS3 library that Parsley builds upon, but that can also be used separately.','svn','http://opensource.powerflasher.com/spicefactory/svn/parsley',NULL,'Apache License 2.0.','http://powerflasher.com','http://www.spicefactory.org/parsley/','http://www.spicefactory.org/parsley/docs/2.2/manual/','di, ioc, meta, framework, tooling',NULL,'2010-05-19 14:22:08','2010-06-05 13:17:54');
INSERT INTO "libraries" VALUES(4,'AS3isolib','ActionScript 3.0 Isometric 3D Library','','svn','http://as3isolib.googlecode.com/svn/trunk/fp10',NULL,'MIT licence','http://code.google.com','http://as3isolib.wordpress.com/','http://as3isolib.googlecode.com/svn/trunk/fp10/asdoc/index.html','isometric, 3d, game, iso, orthographic, scenegraph, 2.5d, graphics','','2010-05-19 14:32:32','2010-06-18 14:14:31');
INSERT INTO "libraries" VALUES(5,'Flash Punk','AS3 Library designed for developing 2D Flash games','!http://flashpunk.net/images/logo.gif!

FlashPunk is a free ActionScript library designed for developing 2D Flash games. Its goal is to provide you with a fast, clean framework for prototyping and developing games; this means most of the dirty work -- reliable framerate, sprite rendering/animation, player input, and collision detection (to name a few) -- has been covered with a set of base classes and functions for your ease of use. This gives you more time and energy to concentrate on the design and testing of your game. 

It''s important to note that FlashPunk is targeted towards the development of games with 2D raster/bitmap graphics, as opposed to vector graphics. It can manage thousands of animated bitmap sprites on-screen at a time without slowing, a lot faster than Flash normally could, because it operates under the assumption that your game primarily uses bitmapped graphics. 
','zip','http://flashpunk.net/downloads/FlashPunk_V1_00.zip',NULL,'MIT licence','http://flashpunk.net/','http://flashpunk.net/','http://flashpunk.net/docs/','games, engine, gameengine, playerinput, collisiondetection, animation, sprites, 2D, bitmaps',NULL,'2010-05-19 14:49:09','2010-06-05 13:16:34');
INSERT INTO "libraries" VALUES(6,'AverageColor','A util-class to calculate the average between 2 colors (Hex, RGB or HSB format).','A util-class to calculate the average between 2 colors (Hex, RGB or HSB format).','svn','http://www.libspark.org/svn/as3/AverageColor/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/scratchbrain/AverageColor',NULL,'Graphics/Color',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(7,'Frocessing','AS3 drawing library similar to Processing.','AS3 drawing library similar to Processing.','svn','http://www.libspark.org/svn/as3/Frocessing/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/nutsu/Frocessing/en','','Graphics, Color, Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(8,'Gunyarapaint','Painting component for picture blog.','Painting component for picture blog.','svn','http://www.libspark.org/svn/as3/gunyarapaint/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/gunyarapaint',NULL,'Graphics, Color, paint',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(9,'TeraFire','Fire effect, useful to render animated candles or stoves.','Fire effect, useful to render animated candles or stoves.','svn','http://www.libspark.org/svn/as3/TeraFire/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/trick7/TeraFire',NULL,'Graphics/Color',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(10,'UniqueShape','special form of Shape','special form of Shape','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/UniqueShape',NULL,'Graphics/Color',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(11,'CurveLib','Formula based curve drawing library.','Formula based curve drawing library.','svn','http://www.libspark.org/svn/as3/CurveLib/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/e_s_jp/CurveLib',NULL,'Graphics/Color',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(12,'LCDBitmap','Displays a BitmapData like a LCD display.','Displays a BitmapData like a LCD display.','svn','http://www.libspark.org/svn/as3/LCDBitmap/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/LCDBitmap/en',NULL,'Graphics/Color',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(13,'SvgEditor','A library for editing SVG formatted vector graphics data.','A library for editing SVG formatted vector graphics data.','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/seven/svgeditor_en',NULL,'Graphics/Color',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(14,'RepeatButton','Special button that triggers on mouse down after a delay in a given interval a event.','Special button that triggers on mouse down after a delay in a given interval a event.','svn','http://www.libspark.org/svn/as3/RepeatButton/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/RepeatButton',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(15,'DepthManager','The class to manage the depths of children within a DisplayObjectContainer','The class to manage the depths of children within a DisplayObjectContainer','svn','http://www.libspark.org/svn/as3/DepthManager/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/DepthManager',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(16,'RepeatedClickDispatcher','Dispatcher that sends events on a interval basis between mouse-down and mouse-up.','Dispatcher that sends events on a interval basis between mouse-down and mouse-up.','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/Utils/RepeatedClickDispatcher',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(17,'HikaToolTips','Simple class to display tooltips.','Simple class to display tooltips.','svn','http://www.libspark.org/svn/as3/HikaToolTips/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/hikatsuka/HikaToolTips',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(18,'FreezableMovieClip','Util to freeze a MovieClip and all child MovieClips','Util to freeze a MovieClip and all child MovieClips','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/miyasuke/Freezable',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(19,'Anime','Class to simplify the playback by code of MovieClips.','Class to simplify the playback by code of MovieClips.','svn','http://www.libspark.org/svn/as3/Anime/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/tmdf/Anime',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(20,'JPPScrollbar','Simple Scrollbar to be used by just adding it to the stage.','Simple Scrollbar to be used by just adding it to the stage.','svn','http://www.libspark.org/svn/as3/JPPScrollbar/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/alumican/JPPScrollbar',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(21,'MouseZoom','A library which offers events for zooming and panning by mouse-wheel and dragging.','A library which offers events for zooming and panning by mouse-wheel and dragging.','svn','http://www.libspark.org/svn/as3/mouseZoom/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/tngar/mouseZoom','','DisplayObject/Filter','','2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(22,'BetweenAS3','Fast, powerful and professional new tweening engine.','Fast, powerful and professional new tweening engine.','svn','http://www.libspark.org/svn/as3/BetweenAS3/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/BetweenAS3/en',NULL,'DisplayObject/Filter',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(23,'Metasequoia','Papervision3D parser for .mqo (Metasequoia) files.','Papervision3D parser for .mqo (Metasequoia) files.','svn','http://www.libspark.org/svn/as3/Metasequoia/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/rch850/Metasequoia',NULL,'3D',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(24,'AS3D','3D engine by muta.','3D engine by muta.','svn','http://www.libspark.org/svn/as3/AS3D/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/muta/AS3D',NULL,'3D',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(25,'FLARToolKit','AS3 version of the ARToolKit.','AS3 version of the ARToolKit.','svn','http://www.libspark.org/svn/as3/FLARToolKit/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/saqoosha/FLARToolKit/en',NULL,'3D',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(26,'Metasequoia(for Away3D)','Away3D parser for .mqo (Metasequoia) files(ported from Metasequoia project).','Away3D parser for .mqo (Metasequoia) files(ported from Metasequoia project).','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/nanmo/Metasequoia',NULL,'3D',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(27,'FL3DViewer','Viewer for various kinds of 3D models in Flash.','Viewer for various kinds of 3D models in Flash.','svn','http://www.libspark.org/svn/as3/FL3DViewer/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/nanmo/FL3DViewer',NULL,'3D',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(28,'SeamCarving','Seam carving image scaling algorithm that tries to safe important parts from being squeezed.','Seam carving image scaling algorithm that tries to safe important parts from being squeezed.','svn','http://www.libspark.org/svn/as3/SeamCarving/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/rch850/SeamCarving',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(29,'PotrAs','Generates vector graphics from a b/w image.','Generates vector graphics from a b/w image.','svn','http://www.libspark.org/svn/as3/PotrAs/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/nitoyon/PotrAs',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(30,'PowerBalance','Left/right aware moving object detection algorithm for Camera.','Left/right aware moving object detection algorithm for Camera.','svn','http://www.libspark.org/svn/as3/PowerBalance/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/ll_koba_ll/PowerBalance',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(31,'ColorPickUper','Main Color selecting util of BitmapDatas.','Main Color selecting util of BitmapDatas.','svn','http://www.libspark.org/svn/as3/ColorPickUper/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/muraken/ColorPickUper',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(32,'Marilena','AS3 port of the OpenCV Object detection algorithm.','AS3 port of the OpenCV Object detection algorithm.','svn','http://www.libspark.org/svn/as3/Marilena/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/mash/Marilena',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(33,'Escher','Escher droste image effect class BitmapData.','Escher droste image effect class BitmapData.','svn','http://www.libspark.org/svn/as3/Escher/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/octech/Escher',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(34,'QRCodeReader','Event based reading of QR codes.','Event based reading of QR codes.','svn','http://www.libspark.org/svn/as3/QRCodeReader/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/QRCodeReader',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(35,'FaceIt','AS 3.0 library for Face (or object) tracking.','AS 3.0 library for Face (or object) tracking.','svn','http://www.libspark.org/svn/as3/FaceIt/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/benj/FaceIt/en',NULL,'Image Processing',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(36,'Sazameki','The Audio library to arrange or sounds the waveform which generated in Flash','The Audio library to arrange or sounds the waveform which generated in Flash','svn','http://www.libspark.org/svn/as3/sazameki/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/zk33/sazameki/en',NULL,'Sound',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(37,'Craptune','The MML sound library specified for game BGM','The MML sound library specified for game BGM','svn','http://www.libspark.org/svn/as3/Craptune/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/Craptune',NULL,'Sound',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(38,'BeatTimer','The utility for the person who wants to do something sychronized with a rhythm.','The utility for the person who wants to do something sychronized with a rhythm.','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/BeatTimer',NULL,'Sound',NULL,'2010-06-05 07:47:08','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(40,'BeatDispatcher','The libary to dispatch the event on every bar, beat or Tick value which registered. You can develop something like rhythm machine.','The libary to dispatch the event on every bar, beat or Tick value which registered. You can develop something like rhythm machine.','svn','http://www.libspark.org/svn/as3/BeatDispatcher/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/alumican/BeatDispatcher',NULL,'Sound',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(41,'ASound','Easy audio library. (Planned to) Provide the API like DisplayObject.','Easy audio library. (Planned to) Provide the API like DisplayObject.','svn','http://www.libspark.org/svn/as3/ASound/trunk','src/','MIT License','http://www.libspark.org','http://www.libspark.org/wiki/gamiken/ASound','','Sound','','2010-06-05 07:47:09','2010-06-19 22:15:01');
INSERT INTO "libraries" VALUES(42,'ASDeferred','AS3 port of the JSDefered class.','AS3 port of the JSDefered class.','svn','http://www.libspark.org/svn/as3/ASDeferred/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/ASDeferred',NULL,'Async Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(43,'Chain','Class to handle asynchronous processing easily.','Class to handle asynchronous processing easily.','svn','http://www.libspark.org/svn/as3/Chain/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/Chain',NULL,'Async Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(44,'Thread','Library to archive threading.','Library to archive threading.','svn','http://www.libspark.org/svn/as3/Thread/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/Thread/en','http://www.libspark.org/htdocs/as3/thread/','Async Processing','','2010-06-05 07:47:09','2010-06-05 13:20:49');
INSERT INTO "libraries" VALUES(45,'ThreadViewer','The AIR application to profile/monitor the ActionScript Thread''s.','The AIR application to profile/monitor the ActionScript Thread''s.','svn','http://www.libspark.org/svn/as3/ThreadViewer/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/daoki2/ThreadViewer',NULL,'Async Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(46,'ThreadStepProcessor','Extension for the Thread Library to support multithreading with pseudo threads.','Extension for the Thread Library to support multithreading with pseudo threads.','svn','http://www.libspark.org/svn/as3/ThreadStepProcessor/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/martinheidegger/ThreadStepProcessor/en',NULL,'Async Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(47,'Next','Library to write asynchronous processing simpler.','Library to write asynchronous processing simpler.','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/hidachinoiro/Next',NULL,'Async Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(48,'ForcibleLoader','The loader to read the swf less than ver.9 as ver.9 form.','The loader to read the swf less than ver.9 as ver.9 form.','svn','http://www.libspark.org/svn/as3/ForcibleLoader/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/yossy/ForcibleLoader',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(49,'AVM2Loader','The subclass of Loader which load both AVM1, AVM2 swf as AVM2swf.','The subclass of Loader which load both AVM1, AVM2 swf as AVM2swf.','svn','http://www.libspark.org/svn/as3/AVM2Loader/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/fladdict/AVM2Loader',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(50,'GroupLoader','The class to return the array of the BitmapData from the pushed image URL list.','The class to return the array of the BitmapData from the pushed image URL list.','svn','http://www.libspark.org/svn/as3/GroupLoader/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/muraken/GroupLoader',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(51,'Cohesion Framework','The framework project to create the multi user client using Socket (XMLSocket) easily','The framework project to create the multi user client using Socket (XMLSocket) easily','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/amoi/cohesion',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(52,'ZipLoader','Get the data from zip file directly like URLLoader','Get the data from zip file directly like URLLoader','svn','http://www.libspark.org/svn/as3/ZipLoader/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/tarotarorg/ZipLoader',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(53,'Syndication','The libary to whom wants to use the as3syndicationlib in Flash','The libary to whom wants to use the as3syndicationlib in Flash','svn','http://www.libspark.org/svn/as3/Syndication/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/Syndication',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(54,'LineReader','The class to help you read the line asyncronously from Socket, URLStream and FileStream','The class to help you read the line asyncronously from Socket, URLStream and FileStream','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/tera/LineReader',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(55,'MultipartFormDataBuilder','Simple class to create the request for multipart/form-data request','Simple class to create the request for multipart/form-data request','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/psyark/MultipartFormDataBuilder',NULL,'Network/Load',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(56,'Graphoon','Flex component and library to draw the graph which we learned at math class of junior or high school','Flex component and library to draw the graph which we learned at math class of junior or high school','svn','http://www.libspark.org/svn/as3/Graphoon/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/fushan/Graphoon',NULL,'Math/Physics',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(57,'JointModel','Joint model','Joint model','svn','http://www.libspark.org/svn/as3/JointModel/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/uwi/JointModel',NULL,'Math/Physics',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(58,'CollisionDetection','The class to detect collisions/statistics','The class to detect collisions/statistics','svn','http://www.libspark.org/svn/as3/CollisionDetection/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/scratchbrain/CollisionDetection',NULL,'Math/Physics',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(59,'CannonML','DSL library for barrage shooting','DSL library for barrage shooting','svn','http://www.libspark.org/svn/as3/CannonML/','src/','Modified BSD License','http://www.libspark.org','http://www.libspark.org/wiki/keim/cannonML','','Game Development','','2010-06-05 07:47:09','2010-06-20 10:24:47');
INSERT INTO "libraries" VALUES(60,'CharacterWalker','Let the character of the ''RPG Tsuku-ru'' to walk with animation','Let the character of the ''RPG Tsuku-ru'' to walk with animation','svn','http://www.libspark.org/svn/as3/CharacterWalker/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/tarotarorg/CharacterWalker',NULL,'Game Development',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(61,'GameAI','Some libraries for Game AI','Some libraries for Game AI','svn','http://www.libspark.org/svn/as3/GameAI/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/hael/gameai',NULL,'Game Development',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(62,'MyGameLib','General library to utilize the messy processing when develop the game.','General library to utilize the messy processing when develop the game.','svn','http://www.libspark.org/svn/as3/MyGameLib/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/asahiufo/MyGameLib',NULL,'Game Development',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(63,'CountDown','The class that returns the date, time until the Hideki''s 60th birthday','The class that returns the date, time until the Hideki''s 60th birthday','svn','http://www.libspark.org/svn/as3/CountDown/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/hbkr/CountDown',NULL,'Date/Time',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(64,'TeraClock','You can create the clock. You can get two digit digital or angle of the analog clock handle data.','You can create the clock. You can get two digit digital or angle of the analog clock handle data.','svn','http://www.libspark.org/svn/as3/TeraClock/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/trick7/TeraClock',NULL,'Date/Time',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(65,'SmartDate','The class to treat the Date class intuitively.','The class to treat the Date class intuitively.','svn','http://www.libspark.org/svn/as3/SmartDate/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/tanabe/SmartDate',NULL,'Date/Time',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(66,'EnhancedTimer','Enhanced timer which contain the date property.','Enhanced timer which contain the date property.','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/EnhancedTimer',NULL,'Date/Time',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(67,'Eseclock','You can develop something like UNIQLOCK','You can develop something like UNIQLOCK','svn','http://www.libspark.org/svn/as3/Eseclock/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/Eseclock',NULL,'Date/Time',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(68,'CSVUtils','Utility to process CSV files.','Utility to process CSV files.','svn','http://www.libspark.org/svn/as3/CSVUtils/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/kujirahand/CSVUtils',NULL,'Text',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(69,'CharsetDetect','The library to detect the character code of a file.','The library to detect the character code of a file.','svn','http://www.libspark.org/svn/as3/CharsetDetect/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/mmlemon/detect','','Text, encoding','','2010-06-05 07:47:09','2010-06-05 12:51:46');
INSERT INTO "libraries" VALUES(70,'Psycode','Enhanced TextArea to input code.','Enhanced TextArea to input code.','svn','http://www.libspark.org/svn/as3/Psycode/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/Psycode',NULL,'Text',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(71,'RuntimeFontParser','A port of a java library that can load .ttf/.otf fonts files at runtime into flash and display the glyphs.','A port of a java library that can load .ttf/.otf fonts files at runtime into flash and display the glyphs.','svn','http://www.libspark.org/svn/as3/RuntimeFontParser/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/RuntimeFontParser/en',NULL,'Text',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(72,'SWFWheel','The library to whom do not satisty at SWFMacMouseWheel','The library to whom do not satisty at SWFMacMouseWheel','svn','http://www.libspark.org/svn/as3/SWFWheel/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/SWFWheel/en',NULL,'Browser',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(73,'SWFSize','Reinvention of the wheel of the SWFForceSize','Reinvention of the wheel of the SWFForceSize','svn','http://www.libspark.org/svn/as3/SWFSize/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/SWFSize/en',NULL,'Browser',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(74,'OverlayFlash','Supporting library to create the full-screen Flash contents.','Supporting library to create the full-screen Flash contents.','svn','http://www.libspark.org/svn/as3/OverlayFlash/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/yoshihiko/OverlayFlash',NULL,'Browser',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(75,'ASReflect','The utility to do the reflection at ActionScript3 efficiently','The utility to do the reflection at ActionScript3 efficiently','svn','http://www.libspark.org/svn/as3/ASReflect/',NULL,'Apache License, Version 2.0','http://www.libspark.org','http://www.libspark.org/wiki/yossy/ASReflect',NULL,'Utility, Reflection',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(76,'OverloadSupport','Achieve the overload at AS3!','Achieve the overload at AS3!','svn','http://www.libspark.org/svn/as3/OverloadSupport/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/yossy/OverloadSupport',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(77,'TwoWayBinding','The utility class to achieve the two-way bindings','The utility class to achieve the two-way bindings','svn','http://www.libspark.org/svn/as3/TwoWayBinding/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/nitoyon/TwoWayBinding',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(78,'Flagment','The Flag driven library','The Flag driven library','svn','http://www.libspark.org/svn/as3/Flagment/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/Flagment',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(79,'CountTrigger','Flag driven library based on counter','Flag driven library based on counter','svn','http://www.libspark.org/svn/as3/CountTrigger/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/alumican/CountTrigger',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(80,'AS3bind','Currying like boost::bind','Currying like boost::bind','svn','http://www.libspark.org/svn/as3/AS3bind/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/hidachinoiro/AS3bind',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(81,'HikaUrawaza','The class to detect specifyed command and dispatch event.','The class to detect specifyed command and dispatch event.','svn','http://www.libspark.org/svn/as3/HikaUrawaza/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/hikatsuka/HikaUrawaza',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(82,'Recorder','The class to record and remember the properties of the Object. You can bind the recorded properties on another Object.','The class to record and remember the properties of the Object. You can bind the recorded properties on another Object.','svn','http://www.libspark.org/svn/as3/Recorder/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/yoshihiko/Recorder',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(83,'Pool','The library for whom wants to keep using the newed object','The library for whom wants to keep using the newed object','svn','http://www.libspark.org/svn/as3/Pool/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/kaikoga/Pool',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(84,'ECMAScript','AS3 Port of yossy''s ECMAScript-based scripting engine.','### Documentation

#### Basic Use

Start a new Flash project. Put the `scripting` folder from the repo file in the classpath. Add the following to the class you wish to implement the Scripting engine...:

    
    import scripting.*;
    
    var codestring:String = "var x = 10; var y = x + 20;" ;
    
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
    
    var result = vm.execute();

Run the program, and inside the virtual machine, the variable y will be set to 30. However, this is useless if we cant see it. Before you run `vm.execute()`, lets hook up the VirtualMachine to the outside world by letting it use the trace statement;

    
    import scripting.*;
    
    var codestring:String = "var x = 10; var y = x + 20; trace(y)" ;
    
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
    
    var result = vm.execute();

By attaching objects or functions to the properties of the VirtualMachines global object, you let the scripting engine make use of those objects or functions. Now, when you run this, the output window of your Flash will report 30. Objects, including library objects, can be attached as well:

    vm.getGlobalObject().player = myplayerobject;

    // This will enable Math.floor, Math.sin, etc.. for your scripting engine
    vm.getGlobalObject().Math = Math;

What is `result` used for? `Result` contains the exit code of the scripting program being run. If `vm.execute` returns false, then the program ran to the end. If it returns true, then the program is still in progress, and was suspended (see below).

#### Language

The scripting language is a mostly faithful copy of ECMAScript from the ActionScript 2 era. It supports

* variables
* arrays
* objects and properties
* `if` - conditions
* `while` loops and `for` loops
* `break` and `continue`
* `with` blocks

Note that not all features are included; it does not implement

* `try/catch/finally`
* `for.. in` loops
* the `new` operator

Note that while the `new` operator is not included, new arrays and objects can be created by the code:

    var newarray = [];

    var newobject = {};

#### New Features

The scripting language also includes some special language features.

* `loop` statement
* `suspend` / `yield`
* `coroutine` type functions

The `loop` statement is a simple infinite loop. Note that by itself, thats not a useful feature; but its meant to be combined with the other new language features, such as `suspend`.

    loop
    {
        updateGameScripting();
        suspend;
    }


`Suspend` (or `yield`, which is a synonym) will pause the virtual machine and cause `vm.execute()` to exit with a return code of true. If `vm.execute()` is then called again, the program will pick up where it left off and continue to run. Here is an example how you can use suspending to make routines that get further input from the player.

    // Code in your Flash project
    function askquestion(question)
    {
    	// Assume that these are custom movie clips being manipulated
    	questiondialog.questionfield.text = question;
    	questiondialog.visible = true;
    	questiondialog.okbutton.addEventListener(''click'',onAnswerQuestion);
    }
    
    function onAnswerQuestion(e:Event)
    {
    	questiondialog.visible = false;
    	vm.getGlobalObject()._engineanswer = questiondialog.answerfield.text;
    }
    
    vm.getGlobalObject()._engineaskquestion = askquestion;// Scripting code
    coroutine getinput(question)
    {
    	_engineaskquestion(question);
    	suspend;
    
    	// Now that we are back, onAnswerQuestion in the main Flash
    	// has already set _engineanswer for us.
    
    	return _engineanswer;
    }
    
    // Note the use of underscores in the "engine" functions and variables.
    // This is mainly to disguise the inner workings of your scripting from modders;
    // More seriously-written code would preparse what a modder writes, for instance to keep
    // them from overwriting or redeclaring important variables, or using suspend when
    // the engine wouldn''t know how to resume the code.
    
    // Of course, if the scripting engine is entirely for the programmer''s use, they
    // can name things how they please.var playername = getinput("What is your name?");

There are some important limitations to when and where you can suspend a scripting program.

* You can suspend code on the top level of your script (i.e. not inside any functions.)
* You can not suspend code that is inside a `function`. A VM function is essentially a wrapped Actionscript function that asks the virtual machine to process some bytecodes. (Note that this is why its so easy to attach external functions to the VMs global object - because VM and AS functions are peers.) However, much like how you cant stop an AS function midway through, you cant stop VM code thats written as a function.
* However, if instead of a `function`, you use a `coroutine`, you can suspend inside the coroutine. A [coroutine](http://en.wikipedia.org/wiki/Coroutine) is a special Object, not a wrapped function, that the VM is capable of suspending.
* Finally, if you want to suspend a coroutine, you must not have called that coroutine from inside a function. There needs to be a chain of coroutines from the top down, if you want to be able to suspend.

If the rules here are a bit too complex (for either you, or more importantly, for modders), just use coroutines exclusively instead of functions when writing code where you might need to stop for input. Alternately, use this command:

    var s:Scanner = new Scanner(codestring);
    var p:Parser = new Parser(s);
    p.setForceCoroutine(true);

`setForceCoroutine`, when used, will cause any reference to a function to be compiled to a coroutine instead, simplifying the issue.

#### Reusing Compiled Code

Once the virtual machine has executed once, you can use the compiled code as a library of functions to call on freely.If you want to call on a compiled function, simply access the global object and use that functions name.

    vm.getGlobalObject().mycompiledfunction(myarg, myarg2);

If you want to call on a coroutine, use `runCoroutine` instead, and pass it a string of the coroutines name, and an optional Array of arguments.

    vm.runCoroutine("mycoroutinename",[myarg1,myarg2]);

Note that you should be sure to run `execute` first to be certain that these functions and coroutines are moved from the source code to the VMs global object.If your functions and coroutines change the values of variables at the global level of the code, those changes will be preserved from call to call.

#### Optimizing

It is possible to optimize the code you compile, by passing an optional argument to `Parser.parse()` - the virtual machine that you are targetting.

    vm.setByteCode(p.parse(vm));

If you do this, the array of bytecodes that `parse()` produces cannot be used in any other virtual machine. However, the code will run with an estimated 40% speed boost.
','svn','http://www.libspark.org/svn/as3/ECMAScriptEngine/','/','MIT License','http://www.libspark.org','http://www.libspark.org/wiki/ECMAScript','http://www.libspark.org/svn/as3/ECMAScriptEngine/docs.htm','Utility, scriptengine','','2010-06-05 07:47:09','2010-06-20 11:45:29');
INSERT INTO "libraries" VALUES(85,'MMExecute2','Convenient MMExecute that connects SWFPanel and JSFL.','Convenient MMExecute that connects SWFPanel and JSFL.','svn','http://www.libspark.org/svn/as3/MMExecute2',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/kaede/MMExecute2','','Utility, JSFL','','2010-06-05 07:47:09','2010-06-05 12:49:29');
INSERT INTO "libraries" VALUES(86,'SwfJsfl','The class to handle JSFL file as a class.','The class to handle JSFL file as a class.','svn','http://www.libspark.org/svn/as3/swfJSFL/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/swfJSFL',NULL,'Utility',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(87,'Slides Library','The library to create the presentation slide with timeline base','The library to create the presentation slide with timeline base','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/uranodai/Slides',NULL,'Progression',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(88,'EffectViewer','The simple viewer for Progression3 to check how the several effects looks like when process together','The simple viewer for Progression3 to check how the several effects looks like when process together','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/flabaka/EffectViewer',NULL,'Progression',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(89,'FlexTrace','Custom trace() class for Flex','Custom trace() class for Flex','svn','http://www.libspark.org/svn/as3/FlexTrace/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/sasa/FlexTrace',NULL,'Flex',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(90,'CellCheckBox','Custom CheckBox class for itemRenderer (require Flex 2 SDK)','Custom CheckBox class for itemRenderer (require Flex 2 SDK)','svn','http://www.libspark.org/svn/as3/CellCheckBox/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/sasa/CellCheckBox',NULL,'Flex',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(91,'Genius Framework','The framework to provide the architecture of the Flex application','The framework to provide the architecture of the Flex application','svn',NULL,NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/seagirl/genius',NULL,'Flex',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(92,'AirAutoUpdater','Let to provide the update function to AIR application by writing just one line to the MXML','Let to provide the update function to AIR application by writing just one line to the MXML','swc','http://www.libspark.org/svn/air/AirAutoUpdater/trunk/bin/AirAutoUpdater.swc','','not known','http://www.libspark.org','http://www.libspark.org/wiki/AirAutoUpdater','','Air, update, deployment, distribution','','2010-06-05 07:47:09','2010-06-20 08:54:22');
INSERT INTO "libraries" VALUES(94,'MEXSLT','The library to generate the class from XML written by MXML like XSLT','The library to generate the class from XML written by MXML like XSLT','svn','http://www.libspark.org/svn/as3/MEXSLT/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/darkomeme/MEXSLT',NULL,'Flex',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(95,'SQLControls','The library to handle SQLite data easily from AIR application','The library to handle SQLite data easily from AIR application','svn','http://www.libspark.org/svn/as3/SQLControls/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/daoki2/SQLControls',NULL,'AIR',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(96,'ChartData','The library to display the chart at AIR application','The library to display the chart at AIR application','svn','http://www.libspark.org/svn/as3/ChartData/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/daoki2/ChartData',NULL,'AIR',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(97,'StreetView','Google Maps Street View AIR application','Google Maps Street View AIR application','svn','http://www.libspark.org/svn/as3/StreetView/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/uranodai/StreetView',NULL,'AIR',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(99,'AirDao','O/R Mapper for Adobe AIR','O/R Mapper for Adobe AIR','svn','http://www.libspark.org/svn/air/AirDao/','src/','MIT License','http://www.libspark.org','http://www.libspark.org/wiki/Seacolor/AirDao','','AIR, database, orm, dao','','2010-06-05 07:47:09','2010-06-20 08:56:19');
INSERT INTO "libraries" VALUES(100,'AS3Unit','The Unit test framework that can write by POJO like JUnit4','The Unit test framework that can write by POJO like JUnit4','svn','http://www.libspark.org/svn/as3/AS3Unit/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/yossy/AS3Unit/en/index',NULL,'Debug/Test',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(101,'ASUnit','A simple Unit test framework like JUnit3.8','A simple Unit test framework like JUnit3.8','svn','http://www.libspark.org/svn/as3/ASUnit/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/yossy/ASUnit',NULL,'Debug/Test',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(102,'Profiler','The helper class to debug the memory leak','The helper class to debug the memory leak','svn','http://www.libspark.org/svn/as3/Profiler/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/ken/Profiler',NULL,'Debug/Test',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(103,'Dumper','The class to Dump inside the Object and trace or display to the console of the firebug','The class to Dump inside the Object and trace or display to the console of the firebug','svn','http://www.libspark.org/svn/as3/Dumper/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/dealforest/Dumper',NULL,'Debug/Test',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(104,'Sanzoku','The class to trace or display the properties of several Sprite/MovieClip to the firebug console','The class to trace or display the properties of several Sprite/MovieClip to the firebug console','svn','http://www.libspark.org/svn/as3/Sanzoku/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/kaede/Sanzoku',NULL,'Debug/Test',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(106,'FlaProfiler','The memory profiler for flash','The memory profiler for flash','svn','http://www.libspark.org/svn/as3/FlaProfiler/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/ohura/FlaProfiler',NULL,'Debug/Test',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(107,'SWFAssist','The ActionScript library to create the SWF binary','The ActionScript library to create the SWF binary','svn','http://www.libspark.org/svn/as3/swfassist/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/yossy/swfassist','','Binary Processing','','2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(108,'BMPDecoder','The decoder class to display the BMP file','The decoder class to display the BMP file','svn','http://www.libspark.org/svn/as3/BMPDecoder/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/BMPDecoder',NULL,'Binary Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(109,'ICODecoder','The decoder class to display the ICO file','The decoder class to display the ICO file','svn','http://www.libspark.org/svn/as3/ICODecoder/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/ICODecoder',NULL,'Binary Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(110,'PSDParser','The parser of the PSD file','The parser of the PSD file','svn','http://www.libspark.org/svn/as3/PSDParser/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/munegon/PSDParser',NULL,'Binary Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(111,'Exif','The library to get the Exif information from JPEG file','The library to get the Exif information from JPEG file','svn','http://www.libspark.org/svn/as3/Exif/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/kozy/Exif',NULL,'Binary Processing',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(112,'PlaceEngine','The library to use the PlaceEngine service (that estimates location via Wi-Fi signals) from ActionScript','The library to use the PlaceEngine service (that estimates location via Wi-Fi signals) from ActionScript','svn','http://www.libspark.org/svn/as3/PlaceEngine/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/PlaceEngine',NULL,'Service Connection',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(113,'Amazon','The wrapper library to handle the Amazon Associates Web Service (A2S) easily','The wrapper library to handle the Amazon Associates Web Service (A2S) easily','svn','http://www.libspark.org/svn/as3/Amazon/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/yoshuki/Amazon',NULL,'Service Connection',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:11');
INSERT INTO "libraries" VALUES(114,'SMSas','The library to handle the motion sensor value of the MacBook','The library to handle the motion sensor value of the MacBook','svn','http://www.libspark.org/svn/as3/SMSas/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/ll_koba_ll/SMSas',NULL,'Device/Sensor',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(115,'NdsAs','The AS3 library to communicate with Nitendo DS','The AS3 library to communicate with Nitendo DS','svn','http://www.libspark.org/svn/as3/ndsas/',NULL,NULL,'http://www.libspark.org','http://www.libspark.org/wiki/uranodai/ndsas',NULL,'Device, Sensor, Nintendods',NULL,'2010-06-05 07:47:09','2010-06-05 13:13:12');
INSERT INTO "libraries" VALUES(116,'IPhoneAS','The AS3 library to comunicate with iPhone','The AS3 library to comunicate with iPhone','svn','http://www.libspark.org/svn/as3/iphoneas/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/uranodai/iphoneas/en','','devices, sensor, iphone','','2010-06-05 07:47:09','2010-06-05 12:39:47');
INSERT INTO "libraries" VALUES(117,'MultiTouch','Library to create multi touch application','Library to create multi touch application','svn','http://www.libspark.org/svn/as3/multitouch/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/uranodai/multitouch','','Devices, Sensor, multitouch','','2010-06-05 07:47:09','2010-06-05 12:54:10');
INSERT INTO "libraries" VALUES(118,'ChumbyAS','The AS3 library to communicate with chumbt','The AS3 library to communicate with chumbt','svn','http://www.libspark.org/svn/as3/chumbyas/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/uranodai/chumbyas','','Device/Sensor','','2010-06-05 07:47:09','2010-06-05 12:41:49');
INSERT INTO "libraries" VALUES(119,'AOContainer','Lightweight container for Dependency Injection.','Lightweight container for Dependency Injection.','svn','http://www.libspark.org/svn/as3/AOContainer/',NULL,'','http://www.libspark.org','http://www.libspark.org/wiki/yossy/AOContainer',NULL,'DependencyInjection, IOC, inversionofcontrol, plugin',NULL,'2010-06-05 07:47:09','2010-06-08 00:42:42');
INSERT INTO "libraries" VALUES(120,'AS3Dmod','A library of modifiers for 3D objects','![logo](http://www.everydayflash.com/flash/as3dmod/logo_bw.gif) 

1. AS3Dmod is a cross-engine modifier library in AS3.

AS3Dmod is a library of modifiers for 3d objects. A modifier is an function used to modify a 3d object. Currently AS3Dmod contains 7 modifiers:

1. Bend - bends on object along an axis
1. Noise - deforms an object in a random manner
1. Skew - skews an object along one or more axes
1. Taper - [http://www.kxcad.net/autodesk/3ds_max/Autodesk_3ds_Max_9_Reference/taper_modifier.html](http://www.kxcad.net/autodesk/3ds_max/Autodesk_3ds_Max_9_Reference/taper_modifier.html)
1. Bloat - Bloats the mesh by forcing vertices out of specified sphere
1. Perlin - Generates a perlin noise bitmap and displaces vertices based on the color value of each pixel of the noise map
1. Twist - twists the mesh around it''s center point

AS3Dmod also features an abstract layer and a simple plug-in architecture that allows the modifiers to work with most of the popular Flash 3d engines.

Current version 0.2. Features include:

1. 7 modifiers as listed above
1. a framework for creating static and animated modifier stacks
1. 4 plug-ins for the most popular 3d engines: Pv3d, Away3d, Sandy3d and Alternativa3d
1. a simple demo for each engine

Documentation (in progress) can be found here: [http://www.everydayflash.com/flash/as3dmod/doc/](http://www.everydayflash.com/flash/as3dmod/doc/)','svn','http://as3dmod.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com/hosting','http://code.google.com/p/as3dmod/','http://www.everydayflash.com/flash/as3dmod/doc/','','','2010-06-17 23:00:52','2010-06-18 02:28:53');
INSERT INTO "libraries" VALUES(121,'Nd3d','ND3D is a small and lightweight AS3 3D Engine',' ND3D is a simple to use AS3 3D Engine. Aimed for speed and simplicity. Target use are small 3D effects and rapid 3D testing / prototyping. The compiled size of the engine is about 10k.

 Features:

* Interactive/clickable meshes
* Wireframe rendering
* Bitmap textures
* Basic dynamic lighting
* Additive blending for materials
* Distance blur for meshes
* 3D sprites
* 3DS, ASE and MD2 mesh loader
* Animated MD2 Meshes
* Pixel&Linerenderer
* Custom renderer
* Apply flashfilters to meshes
* Built in primitives (plane, cube, sphere, box, line3d, sprite3d)
* Vertexcleaner, Normalsflipper

 Examples: [http://www.nulldesign.de/nd3d-as3-3d-engine/](http://www.nulldesign.de/nd3d-as3-3d-engine/) 

  ![](http://www.nulldesign.de/wp-content/uploads/2009/02/nd3d_teaser.jpg) 

  ![](http://www.nulldesign.de/exp/3dengine_samples.jpg) 

','svn','http://nd3d.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/nd3d/',NULL,'AS3, 3d, actionscript, flash, 3dengine, effects',NULL,'2010-06-17 23:18:24','2010-06-18 14:18:04');
INSERT INTO "libraries" VALUES(122,'Tweener','A class for creating tweens in actionscript 2 and 3 - because there''s infinity between 0 and 1.',' Tweener (caurina.transitions.Tweener) is a Class used to create tweenings and other transitions via ActionScript code for projects built on the Flash platform. It''s released and maintained for these versions:

* ActionScript 2.0, for Flash 7+ and Flash Lite 2.0+
* ActionScript 2.0, for Flash 8+
* ActionSctipt 3.0, for Flash 9+

 Ported versions for other languages are also available:

*  [haXe version](http://www.ralcr.com/caurina/) (ported by [Baluta Cristian](http://www.ralcr.com/) )
*  [JavaScript version](http://coderepos.org/share/wiki/JSTweener) (ported by [Yuichi Tateno](http://d.hatena.ne.jp/secondlife) )
*  [JavaScript version](http://mikemacmillan.com/tweener/) (ported by [Michael MacMillan](http://mikemacmillan.com) )
*  [vvvv version](http://code.google.com/p/tweener/downloads/list?q=label:Platform-vvvv) using nodes
*  [vvvv version](http://vvvv.svn.sourceforge.net/viewvc/vvvv/plugins/c%23/Value/TweenerShaper/trunk/) using a native C# dll (faster) (ported by by Rene Westhof)
*  [Python version](http://wiki.python-ogre.org/index.php/CodeSnippits_pyTweener) (ported by Benjamin Harling)
*  [C++ version](http://code.google.com/p/cpptweener/) (ported by [Wesley Marques](http://codevein.com/) )

 There are also some other libraries inspired by it:

*  [Artefact Animator](http://artefactanimator.codeplex.com/) for Silverlight/WPF (by [Jesse Graupmann](http://www.jessegraupmann.com/) , among others)

 In layman''s terms, Tweener helps you move things around on the screen using only code, instead of the timeline.

 The general idea of a tweening Class is that dynamic animation and transitions (created by code) are easier to maintain and control, and more stable than animation based on the regular Flash timeline, since you can control it by time rather than by frames.

 Aimed both for designers and advanced developers, the Tweener syntax is created with __simplicity__ of use in mind, while still allowing access to more advanced features. Because of this, it follows a one-line; design mentality when creating new tweenings, with no instancing required (as it''s a static Class) and a set of optional parameters. Also, there are no initialization methods required by Tweener, other than the mandatory `import` command.

 Its fluid syntax allows it to be used to tween any numeric property of any object of any class, so it is not tied to specific properties of built-in Classes such as MovieClips or TextFields. This __flexibility__ grants a wider control on how transitions are performed, and makes creating complex sequential transitions on any kind of object easier.

 Small file overhead is also one of the main goals of Tweener - once included on SWF movies, Tweener currently takes 8.8kb (AS2 FL2), 9.2kb (AS2) or 10.4kb (AS3) of the total compiled file size. It can be compiled with the Flash IDE, MTASC, or Flex SDK (even with strict rules on), with no errors or warnings thrown during compilation.

Tweener is also the spiritual successor to [MC Tween](http://hosted.zeh.com.br/mctween). However, it follows ActionScript''s more strict OOP rules, and gets rid of the fixed parameter order syntax imposed by MC Tween. As a result, code written with Tweener is a lot more readable even for developers not versed on the Class.

 Development wise, __modularity__ is one of the main aspects of Tweener. The code is built in a way that new features such as transitions and special tweenings can be added (or removed) easily: for example, properties that are only acessible through methods and functions can be tweened by creating and registering new special properties. Expanding the feature set of the original Class can be done on a per-project basis, with no change to the original files.

 From this page, you can download [the latest stable (heavily tested) version](http://code.google.com/p/tweener/downloads/list) of Tweener, check out a few [examples with source](http://tweener.googlecode.com/svn/trunk/examples/) , or [read the documentation](http://hosted.zeh.com.br/tweener/docs/) . There''s also a [mailing list for Tweener discussion](http://lists.caurinauebi.com/listinfo.cgi/tweener-caurinauebi.com) .

 If you prefer, you can also [get the very latest versions from Subversion](http://code.google.com/p/tweener/source) , before they''re considered stable and featured on the download list (the changelog is available [here](http://code.google.com/p/tweener/wiki/Changelog) ). The repository can also be viewed [with a web browser](http://tweener.googlecode.com/svn/trunk/) .

','svn','http://tweener.googlecode.com/svn/trunk','','MIT License','http://code.google.com','http://code.google.com/p/tweener/','http://hosted.zeh.com.br/tweener/docs/en-us/','actionscript, tween, tweening, equations, transition, animation, easing, flex, as2, as3, adobe, air, flash, flashlite, apollo','','2010-06-17 23:18:24','2010-06-20 09:28:53');
INSERT INTO "libraries" VALUES(123,'Kitchensynclib','KitchenSync is an ActionScript 3.0 library for sequencing animations and other time-based actions.','  ![](http://mimswright.com/kitchensync/docs/img/KSLogo.png) 

# KitchenSync is an ActionScript 3.0 library for sequencing animations and other time-based actions. [](#KitchenSync_is_an_ActionScript_3.0_library_for_sequencing_animat) 

# News [](#News) 

* 2010/03/06 - [KitchenSync](/p/kitchensynclib/wiki/KitchenSync) 2.0.1 is available for download!

## Read the __new__  [User Guide](http://kitchensync.as3lib.org/manual/) ! [](#Read_the_new__!) 

','svn','http://kitchensynclib.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/kitchensynclib/',NULL,'flash, actionscript, as3, actionscript3.0, animation, motiongraphics, timer, synchronizer, flex, kitchensync, kitchensink, synchronization, tween, easing, engine',NULL,'2010-06-17 23:18:24','2010-06-18 14:18:00');
INSERT INTO "libraries" VALUES(124,'Gyro-actionscript-animation','A tween and animation library for ActionScript 3',' Gyro is a feature-rich, extensible collection of classes for creating tweens and other forms of animation with ActionScript 3. It supports step-based (typically frame-based) and time-based animations for changing any visual (or other) property over time as well as classes for following/drawing paths and applying seeking or constant motion.

 Gyro is still in early development. For an alpha preview, see: [http://www.senocular.com/gyro](http://www.senocular.com/gyro) 

  __ [Example Code](/p/gyro-actionscript-animation/wiki/ExampleCode) __ 

','svn','http://gyro-actionscript-animation.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/gyro-actionscript-animation/',NULL,'actionscript, as3, tween, animation, senocular, motion',NULL,'2010-06-17 23:18:25','2010-06-18 14:18:00');
INSERT INTO "libraries" VALUES(125,'Twease','A lightweight and extendable tweening engine and sequencer for ActionScript 2 & 3',' A light, powerful, and open source tweening engine and sequencer for AS2 and AS3.

 Note: this package has been succeeded by the Desuade Motion Package - [http://desuade.com/dmp](http://desuade.com/dmp) 

 The release of Twease 2.0 marks the most significant update to one of the most innovative tweening packages available. Available in both AS2 and AS3 with the same syntax, Twease 2 is now feature-complete and ready to be used everywhere. I encourage you to download Twease now and play around with it. I&#x27;m sure you&#x27;ll find it&#x27;s feature-rich and intuitive syntax a pleasure to use in all of your projects - not to mention it&#x27;s trademark filesize that will save you so much.

 For more information, please visit the homepage and blog.

','svn','http://twease.googlecode.com/svn/trunk','as3/','MIT License','http://code.google.com','http://code.google.com/p/twease/','','actionscript, as2, fuse, tween, sequencer, flash, engine, visualcondition, twease, as3','','2010-06-17 23:18:25','2010-06-18 14:18:16');
INSERT INTO "libraries" VALUES(126,'Thelaboratory-tween','Repository for all as3 tween-related coding.',' [ ![](http://thelaborat.org/img/code_google_title.jpg) ](http://thelaborat.org/) 

# Intro

This project has the objective to host all as3 classes related to tweening. There will be 2 main focus:

# 1) ByteTween

Light weight engine (focusing in low Kb increase and not being a do-it-all engine).

## v1.3

Fixes some bugs from v1.2 that causes malfunction on large number of tweens. Adds new modules to the module list, they are the Gradients module. Added too the ShortTween wich is a shortcut for the most common tweens (x,y,alpha,...). Correction of bugs added some bytes to the basic version.

### Features

* Same as v1.2 and bug fixes.
* New modules! Added GradientRGB and GradientARGB (call for"gradientRGB"and"gradientARGB"respectively).
* ShortTween = static class with shortcut to most common tweens (alpha,x,y,...).



#### Modules Available

* __SimpleVersion(1.0Kb)__Actually not a Module. Just the ByteTween__without__overlap check,pause,unpause,cancel. Just the basic Numeric Tween. The smallest size the code will generate.
* __ColorModule(+0.4Kb)__Adds the&#x27;color&#x27; tween feature.
* __ControlModule(+0.2Kb)__Adds the&#x27;pause&#x27;,&#x27;unpause&#x27;,&#x27;cancel&#x27; functions to the engine.
* __FrameModule(+0.1Kb)__Adds the&#x27;frame&#x27; tween feature.
* __OverlapModule(+0.1Kb)__Adds the overlap check in the tween execution (remove older tweens of same property when a new one of same property arrives).
* __ScaleModule(+0.1Kb)__Adds the&#x27;scale&#x27; tween feature (tween both scaleX and scaleY).



#### New Modules

* __GradientRGB(+0.4Kb)__Given an Array of RGB uint values, tween all colors through time.
* __GradientARGB(+0.4Kb)__Given an Array of ARGB uint values, tween all colors (including alpha channel) through time.



#### ShortTween List

* x,y,position (both x/y),scaleX,scaleY,scale (both scaleX/Y),shrink (scale=0),expand (scale=1),alpha,fadeIn (alpha=1),fadeOut (alpha=-1),color,rotation,width,height.

__Usage:__

    //has_overlap: Flag that says if the engine will check overlap.
    //has_control: Flag that says if the engine can do pause,unpause,cancel actions.
    //... args: Adds 0 or more modules by just adding the module classes separated by commas.
    //Ex.: ByteTween.init(stage,true,true,OverlapModule,ControlModule,ColorModule);
    ByteTween.init(stage,has_overlap:Boolean,has_control:Boolean,... args);
    ByteTween.add(target:*, property:String,value:*,duration:Number,delay:Number, ease:Function,p_callback:Function,... arguments);
    
    //New ShortTween **some examples
    ShortTween.x(target:*,pos_x:Number,duration:Number,delay:Number, ease:Function,p_callback:Function,... arguments);
    ShortTween.alpha(target:*,alpha:Number,duration:Number,delay:Number, ease:Function,p_callback:Function,... arguments);
    //Same as alpha but tween directly to alpha=1.0
    ShortTween.fadeIn(target:*,duration:Number,delay:Number, ease:Function,p_callback:Function,... arguments);
    //Same as alpha but tween directly to alpha=-0.1
    ShortTween.fadeOut(target:*,duration:Number,delay:Number, ease:Function,p_callback:Function,... arguments);



## v1.2

Upgrade of version 1.1 with pratically same features. The difference is now the system can be configured by setting wich functionality module you want active on compile time. With this system you can setup from just a numeric tweener to the full functional tween engine with color,scale,... tweens. Well this is the most stable version. I think that new versions will come in form of modules but now I&#x27;m busy in finishing the MotionPack and new useful classes for ya!

### Features

* Same as v1.1 but now you can add/remove functionalities on compile time.
* Module System that permits to add the funcionality you want and control the size of your swf.
* Most simple version of ByteTween starts now with just__0.8Kb__!! Ok actually 885 bytes.. sorry..
* Functinonality Modules. Choose what you wan just insert it :)
* Even with all funcionalities inserted the max size that the code will achieve is__~2Kb__!!
* Alpha tween with visibility test is included in the basic package. Well it&#x27;s just a boolean check :)



## v1.1

First official version. v1.0 is a gold version :).

### Features

* __Ridiculous amount of Kb increase: Just 1.2Kb!__
* numeric properties tweening.
* &#x27;color&#x27;.

* Using ColorTransform.

* &#x27;alpha&#x27; with visibility control (negative alpha sets visible=false).
* &#x27;frame&#x27; tweening.
* &#x27;scale&#x27; tween.
* Both scaleX and Y at the same time.

* 21 easing functions + All Robert Penner&#x27;s classic functions.
* Tween pause,unpause,cancel control.
* Operation pointed by the target and its properties.

* Tween overlap control.
* A starting tween checks for older tweens of same property and cancel them).



# 2) MotionPack

Package of classes,events and interfaces that allows the developer not only to do the common tweening tasks (with the BaseTween class), but also develop its own tweening classes. It uses a Interface system that allow easy implementation and do not use the only"slot"of the"extends"keyword :).

# Easing Functions Expansion

Within the"org.thelab.motion.transition"package are the most common transitions used in tweens, and also the well known Robert Penner&#x27;s transition functions.But one can also implement its own tween functions.Both tween engines uses default functions for it. The template for them is:

    function ease_name(r:Number):Number;

Where the"r"parameter is a Number inside 0.0 ->1.0 range. Where 0.0 is the tween start and 1.0 is the tween end. The result of this function is used in the following equation:

    target[property] = initial_value + (delta_value)*ease_name(r);

','svn','http://thelaboratory-tween.googlecode.com/svn/trunk','','GNU General Public License v3','http://code.google.com','http://code.google.com/p/thelaboratory-tween/','','actionscript, as3, flash, tween, easing, transition, thelab, motion, animation, bytetween, programming, actionscript3, tweening','','2010-06-17 23:18:25','2010-06-19 02:33:39');
INSERT INTO "libraries" VALUES(127,'Eaze-tween','Eaze Tween: smart, fast, chainable and compact Flash AS3 tweening library',' Eaze was designed to:

* bring back lightness and simplicity in Flash tweening,
* introduce a smartest syntax and event system,
* provide the best performance compromise,
* with minimal classes quantity and no dependencies.

 The result is a compact (~4Kb raw engine and ~9Kb with all plugins), highly optimized library, with a jQuery-like syntax.

  __Status:__ Beta stable, API may change slightly

  __Recent changes (rev.70):__ 

    // chaining of 0-duration tweens (apply, delay(0), to(0), from(0))
    // *warning:* this fix may break existing projects depending on incorrect chaining
    eaze(target).from(...).apply(...).delay(...).apply(...).to(...);
    
    // onStart/onUpdate/onComplete can be set before defining the tween
    eaze(target).onUpdate(tick).to(0.3, { alpha:0 });
  __Recent changes (rev.67):__ 

    // removing tint
    eaze(target).to(1).tint(0, 0); // old (still works)
    eaze(target).to(1).tint(); // new
    
    // stopping target tweens (immediate)
    EazeTween.killTweensOf(target); // old (still works)
    eaze(target).killTweens(); // new (chainable)
    
    // target properties take precedence over special properties
    eaze(target).to(1, { scale:2 }); // tweens target.scale if property exists
 
- - -
## Want MXML friendly tags? [](#Want_MXML_friendly_tags?) 

 Checkout EazeFX: [http://code.google.com/p/eazefx/](http://code.google.com/p/eazefx/) 

 
- - -
','svn','http://eaze-tween.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/eaze-tween/',NULL,'actionscript, as3, tween, tweening, library, flash',NULL,'2010-06-17 23:18:25','2010-06-19 00:53:56');
INSERT INTO "libraries" VALUES(128,'Actuate','Tween library for Actionscript 3','# Actuate is the best library for animating Flash AS3 projects [](#Actuate_is_the_best_library_for_animating_Flash_AS3_projects) 

### Actuate is faster than TweenLite and it is free for all your Flash projects. Power through your everyday needs using no-nonsense, lightweight tweens, then extend when you need more [](#Actuate_is_faster_than_and_it_is_free_for_all_your_Flash_project) 

 It&#x27;s simple to get started!

    Actuate.tween (MySprite, 1, { alpha: 1 } );
 Actuate is designed to be simple to use and to take advantage strong code completion support in code editors like FlashDevelop and Flex Builder, which means no more"reserved"keywords or"special"properties

    Actuate.tween (MySprite, 1, { alpha: 1 } ).onComplete (trace,"Hello World!");
 Instance-based tweens can be a pain. When you don&#x27;t keep track of each tween instance, you run the risk of creating conflicting tweens, which almost never turns out well. With first-class tween overwrite support, Actuate manages your tweens so you don&#x27;t have to. Actuate also makes it simple to disable overwriting when you need to sequence multiple animations

    Actuate.tween (MySprite, 1, { alpha: 1 } );
    Actuate.tween (MySprite, 1, { alpha: 0 }, false).delay (1);
 It&#x27;s also easy to stop, pause or resume your tweens, too

    Actuate.stop (MySprite);
    Actuate.stop (MySprite,"alpha");
    Actuate.pause ();
    Actuate.pause (MySprite);
    Actuate.pause (MySprite, MyOtherSprite);
    Actuate.resume ();
    Actuate.resume (MySprite);
    Actuate.resume (MySprite, MyOtherSprite);
    Actuate.reset ();
 There also are additional shortcuts you can use to help you be even more productive. For example, you can use Actuate to create quick tween-based timers for sequencing events

    Actuate.timer (1).onComplete (trace,"Hello World!");
 Or you can use the"apply"method to stop conflicting tweens and instantly set an object&#x27;s properties

    Actuate.apply (MySprite, { alpha: 1 } );
## Advanced Features [](#Advanced_Features) 

 For advanced animations, you can also tween function calls instead of properties

    Actuate.update (customResize, 1, [100, 100], [300, 300]);
 Actuate also includes shortcuts for some special types of animation. Here is how you might apply a 50% tint using a color transform

    Actuate.transform (MySprite, 1).color (0xFF0000, 0.5);
 You can also control the volume and pan of a sound transform as well

    Actuate.transform (MySprite, 1).sound (0.5, 1);
    Actuate.transform (MySoundChannel, 1).sound (0.5, 1);
 You can also tween filters. You can reference the filter by its class, or by the value of its index in the filter array, whichever is easier

    Actuate.effects (MySprite, 1).filter (BlurFilter, { blurX: 10, blurY: 10 } );
 You even can create bezier curves, and complete motion paths, like in the Flash IDE. Chain multiple path commands together to create one solid path you can tween your objects across using the MotionPathActuator

    var xPath:MotionPath = MotionPath.bezier (200, 20).line (400);
    var yPath:MotionPath = MotionPath.bezier (0, 300).line (0);
    
    Actuate.motionPath (MySprite, 1, { x: xPath, y: yPath } );
## Tween Modifiers [](#Tween_Modifiers) 

 Each tween Actuate creates can be modified with many different tween modifiers. You can link tween modifiers to add delay, complete handlers, or configure many different options about the way your tween behaves

  __autoVisible__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).autoVisible (false);
 Changing the visible property results in better performance than only an alpha of zero, so the autoVisible modifier toggles the visible property automatically based upon the alpha value of the target. It is enabled by default, but it can be disabled if you choose

  __delay__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).delay (1);
 Controls how many seconds should pass before your animation begins

  __ease__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).ease (Quad.easeOut);
 Defines a custom easing equation for your animation. Actuate includes many popular easing functions in both standard and optimized formats. The default is Expo.easeOut, but you can change the default equation through Actuate.defaultEase

  __onComplete__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).onComplete (trace,"Tween finished");
 Calls a function when the tween is finished. You can also define parameters to be used when calling the function

  __onUpdate__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).onUpdate (trace,"Tween updated");
 Calls a function every time the tween updates. You can also define parameters to be used when calling the function

  __reflect__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).repeat ().reflect ();
 Automatically reverses the animation every other time it is repeated. You must enable repeat in order to see any effect

  __repeat__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).repeat (10);
 Runs your animation multiple times before it finishes. You can make your tween repeat indefinitely by passing no value, or you can define the number of times it should repeat

  __reverse__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).reverse ();
 Reverses the direction of your tween

  __smartRotation__ 

    Actuate.tween (MySprite, 1, { rotation: 180 } ).smartRotation ();
 Rotation is circular, so it can be strange to animate. What should be positive one moment is negative the next. As a result, treating rotation like a standard tween will result in jerking once the signs change. Smart rotation always applies rotation in the nearest direction, alleviating this issue.

  __snapping__ 

    Actuate.tween (MySprite, 1, { alpha: 1 } ).snapping ();
 Rounds all of your tween values

','svn','http://actuate.googlecode.com/svn/trunk',NULL,'GNU General Public License v3','http://code.google.com','http://code.google.com/p/actuate/','http://www.eclecticdesignstudio.com/code/actuate/documentation/com/eclecticdesignstudio/motion/Actuate.html','actionscript, as3, tween, tweening, transition, animation, equations, easing, flex, flash, air, motion, bezier, tint, filter','','2010-06-17 23:18:25','2010-06-19 00:53:47');
INSERT INTO "libraries" VALUES(129,'Foam-as3','2D Rigid Body Physics Engine','  ![](http://blog.generalrelativity.org/extraImages/foam_logo_300x200.jpg) 

### FOAM is a two-dimensional rigid body physics engine written in ActionScript 3.0. [](#FOAM_is_a_two-dimensional_rigid_body_physics_engine_written_in_3) 

 It is meant as an architectural and mathematical reference for developers interested in physics simulation in the area of game development or otherwise. It trades efficiency for modularity and extensibility.

','svn','http://foam-as3.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/foam-as3/',NULL,'flash, physics, actionscript, as3, rigidbody, physicsengine',NULL,'2010-06-17 23:18:25','2010-06-18 14:17:57');
INSERT INTO "libraries" VALUES(130,'Glaze','2D Rigid Body Dynamics &amp; Game Engine for Actionsctipt 3',' A game and physics engine for Flash including:

* Rigid Body Dynamics
* Scene management
* Line of sight
* User Input
* Scrolling
* AI

 Core parts of the physics solver and collision system are based on the C physics engine [Chipmunk](http://wiki.slembcke.net/main/published/Chipmunk) 

  ![](http://files.slembcke.net/chipmunk/logo/logo1_tiny.png) 

## Development [](#Development) 

 Apart from the conversion from C to AS3 and OOP, many adaption have be made to tune the engine for the performance characteristics of the AVM2. In summary:

* The original relies heavily on memory operations&copy/update arrays for many things - especially contact lists. Array operations (splicing, adding/removing elements) is expensive in this situation. __AVM2 Optimization__ All these arrays were replaced with linked lists

','svn','http://glaze.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/glaze/',NULL,'Actionscript, Flash, Game, Physics, RigidBody, Dynamics, Engine',NULL,'2010-06-17 23:18:25','2010-06-19 00:25:45');
INSERT INTO "libraries" VALUES(131,'Popforge','ActionScript 3 code sandbox for various packages','  ![](http://je2050.de/files/misc/popforge.gif) 

# import de.popforge.* [](#import_de.popforge.*) 

 Popforge is an Actionscript 3 code sandbox started by [Andre Michelle](http://www.andre-michelle.com) and [Joa Ebert](http://je2050.de/) .

## Packages [](#Packages) 

 The Popforge library is the sum of several free time and research activities. Each piece in its own a project itself.

 Not all of our projects made it to here. We have a lot in the pipe we want to share with the community but still want to assure high quality content. Currently you will find the audio library sources online.

### import de.popforge.audio.* [](#import_de.popforge.audio.*) 

 Popforge AS3 audio library allows you to create a valid [flash.media.Sound](http://livedocs.adobe.com/labs/flex/3/langref/flash/media/Sound.html) object with your own samples. This opens up new perspectives for sound design with the current Adobe Flash Player 9. You can create synthesizers, effects and sample-players of any kind. The suppliedAudioBufferclass allows you to create endless audio playback.

## Future projects [](#Future_projects) 

 Projects that are not online yet but may be released within the next couple of months.

### import de.popforge.imageprocessing.* [](#import_de.popforge.imageprocessing.*) 

 The ImageProcessing library is mainly a set of filters that allows you to synthesize, modify and analyze images within Flash. There are more than 50 filters and several utilities included. [Read more...](http://blog.je2050.de/imageprocessing-library/) 

### import de.popforge.cubicvr.* [](#import_de.popforge.cubicvr.*) 

  [CubicVR 360°](http://cubicvr.popforge.de/) is a Flash 9 panorama viewer with pixel exact rendering which results in high quality pictures and no distortion. It is highly customizable and supports custom keymaps, hotspots, JavaScript interaction and motion blur to name just a few features.

','svn','http://popforge.googlecode.com/svn/trunk',NULL,'GNU General Public License v2','http://code.google.com','http://code.google.com/p/popforge/',NULL,'popforge, actionscript, flash, audio, chiptune, 8bit',NULL,'2010-06-17 23:18:25','2010-06-18 14:18:07');
INSERT INTO "libraries" VALUES(132,'Emitter','ActionScript 3.0 particle FX engine for Flash Player 10','![](http://cjcat2266.googlepages.com/Emitterlogo.png) 

# Emitter is now version 2.1

[Documentation](http://emitter.googlecode.com/svn/trunk/docs/index.html)  

[How to check out the latest source files from the SVN repository](http://cjcat.blogspot.com/2009/06/using-tortoisesvn-to-check-out-files.html) 

------------


## Emitter Video Tutorials are now available on YouTube!!

 [ ![](http://t2.gstatic.com/images?q=tbn:8uN-DitnUjD0uM:http://www.laboxing.com/microsites/uploaded/1071/Image/youtube-logo.jpg) ](http://www.youtube.com/view_play_list?p=84AC3DE6772538E4) 

Check out the complete playlist [here](http://www.youtube.com/view_play_list?p=84AC3DE6772538E4) .

- - -


## Another Particle Engine Project

 [ ![](http://cjcat2266.googlepages.com/StardustLogoMediumShadowed.png) ](http://code.google.com/p/stardust-particle-engine/)  

[Stardust Particle Engine](http://code.google.com/p/stardust-particle-engine/) is another particle engine project I&#x27;m working on, having much more features and extensibility.

- - -


## A thorough manual will be available soon.

Here&#x27;s a WIP manual.It&#x27;s already completely covered basic usage and every parameter in the Particle class.And it also includes working code snippets. [Go to the WIP manual](http://homepage.ntu.edu.tw/~b95901008/bbsfiles/AS3CS4/Emitter/Emitter%202.0%20manual.swf) 

- - -

# Version 2.0 Screenshots

![](http://1.bp.blogspot.com/_4-LtXwX7Yuo/SY3BJy2aY4I/AAAAAAAAATg/GOndG0_yl48/s400/bomb.PNG) ![](http://3.bp.blogspot.com/_4-LtXwX7Yuo/SY3BJ12gB6I/AAAAAAAAATo/46X8ue0otTU/s400/snow.PNG) 

- - -


# Components available now



## Point source component

Use the Emitter 2.0 engine without even writing a single line of code! 

![](http://4.bp.blogspot.com/_4-LtXwX7Yuo/SY1zfIisVJI/AAAAAAAAATY/fZXXESyZsmU/s400/point+source+component.PNG) 

## Performance monitor component

Helps you get an idea of your application&#x27;s performance. 

![](http://1.bp.blogspot.com/_4-LtXwX7Yuo/SY1zfAlR1eI/AAAAAAAAATQ/sEZJirM43Og/s400/performance+monitor+component.PNG) 

- - -


## Version 2.0 Features:

* Easy-to-use API.
* A more comprehensive structure.
* Behavior and behavior triggers.
* Particles can be custom MovieClip symbols.
* Multiple sources for a single emitter.
* Four kinds of basic-shaped sources.
* DisplayObjectSource for custom-shaped particle source.
* Bursting - sudden massive particle spawning.
* Gravitation simulation.
* Bubblemotion simulation.
* Deflector simulation.

- - -

# Version 1.0 Screenshots

![](http://bp3.blogger.com/_4-LtXwX7Yuo/SErPLIC3J5I/AAAAAAAAAGM/HxK1Ts5xUrc/s400/Emitter.PNG) ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SE5Q65rTJFI/AAAAAAAAAH8/Ee7YoGkQ5H4/s400/LE.PNG) ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SEwsS_0J6yI/AAAAAAAAAG8/5aaF4cTumbg/s400/circ.PNG) ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SEwsR-Ux3WI/AAAAAAAAAG0/8TxocGtZLtU/s400/rect.PNG) ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SGcPizeCMVI/AAAAAAAAAJE/JqpluCB8u4c/s400/LDD.PNG) ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SE1jr7AsMDI/AAAAAAAAAHU/f-giHE46Ec0/s400/gravity.PNG) ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SE403-PXqvI/AAAAAAAAAH0/0FK9llYhjAg/s400/ranbow.PNG)  ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SFAdR5NVZvI/AAAAAAAAAIM/_cq7mjwFpoM/s400/Missiles.PNG) ![](http://bp3.blogger.com/_4-LtXwX7Yuo/SFPWMcyhCLI/AAAAAAAAAIk/d4wfgmPdhUM/s400/Storm.PNG) ![](http://bp2.blogger.com/_4-LtXwX7Yuo/SGZd2BVW2KI/AAAAAAAAAIs/1Zjz50G3Dm8/s400/Bubbles.PNG) ![](http://bp0.blogger.com/_4-LtXwX7Yuo/SGczWrXljnI/AAAAAAAAAJM/7GYAZp4CEsM/s400/WS2.PNG) ![](http://bp1.blogger.com/_4-LtXwX7Yuo/SH5PiD-tgaI/AAAAAAAAAJw/e_KhOLGwjsc/s400/CJWp.PNG) ','svn','http://emitter.googlecode.com/svn/trunk','','MIT License','http://code.google.com','http://code.google.com/p/emitter/','http://emitter.googlecode.com/svn/trunk/docs/index.html','ActionScript, AS3, Flash, particle','','2010-06-17 23:18:25','2010-06-19 03:33:24');
INSERT INTO "libraries" VALUES(133,'Stardust-particle-engine','ActionScript 3.0 Particle Engine','  ![](http://cjcat2266.googlepages.com/StardustLogoMediumShadowed.png) 

## Stardust is now version 1.1 [](#Stardust_is_now_version_1.1) 

### You can grab the latest revision from the SVN repository using [TortoiseSVN](http://tortoisesvn.tigris.org/) . [](#You_can_grab_the_latest_revision_from_the_SVN_repository_using_.) 

### Read the [manual](http://stardust-particle-engine.googlecode.com/svn/trunk/manual/Stardust%20Particle%20Engine%20Manual.pdf) first. You&#x27;ll have a far better understanding of the API. [](#Read_the_first._You&#x27;ll_have_a_far_better_understanding_of_t) 

### A playlist of [video tutorials](http://www.youtube.com/view_play_list?p=79300CF812C795F9) is also available. [](#A_playlist_of_is_also_available.) 

 You can support this project by donating. [ ![](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif) ](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=7712710) 

 If you&#x27;ve made anything using Stardust, be it a website, game, or even just a simple demo, you can [email the link to me](mailto:cjcat2266@gmail.com) . I&#x27;d really love to see Stardust being used on other projects.

  [TortoiseSVN Tutorial](http://cjcat.blogspot.com/2009/06/using-tortoisesvn-to-check-out-files.html)  [Downloads](http://code.google.com/p/stardust-particle-engine/downloads/list)  [Manual (PDF)](http://stardust-particle-engine.googlecode.com/svn/trunk/manual/Stardust%20Particle%20Engine%20Manual.pdf)  [Video Tutorials](http://www.youtube.com/view_play_list?p=79300CF812C795F9)  [ActiveTuts+ Tutorials](http://code.google.com/p/stardust-particle-engine/wiki/activeTutsPlus)  [Documentation](http://stardust-particle-engine.googlecode.com/svn/trunk/docs/index.html)  [FlashDevelop Templates](http://stardust-particle-engine.googlecode.com/svn/trunk/FlashDevelop%20templates)  [Blog](http://cjcat.blogspot.com/)  [Forum](http://groups.google.com/group/stardust-particle-engine)  [Facebook Group](http://www.facebook.com/home.php#/group.php?gid=112961636405)  [Update Feed (Atom)](http://code.google.com/feeds/p/stardust-particle-engine/svnchanges/basic)  [Downloads Feed (Atom)](http://code.google.com/feeds/p/stardust-particle-engine/downloads/basic)  [Issues Feed (Atom)](http://code.google.com/feeds/p/stardust-particle-engine/issueupdates/basics)  The core class structure was inspired by [Flint Particle System](http://flintparticles.org/) .



 The particle masking feature was inspired by [Box2D Physics Engine](http://www.box2d.org/) .

 The gravity field, deflector, and action trigger class structure was inherited from [Emitter](http://code.google.com/p/emitter/) , my previous particle engine project.

 
- - -
### Stardust Features [](#Stardust_Features) 

* Supports 2D and 3D particle effects.

* Easy to extend for custom initializers, actions, fields, deflectors, clocks, and 2D/3D renderers.

* Includes 3D extensions for [ZedBox](http://code.google.com/p/zedbox/) , [Papervision3D](http://blog.papervision3d.org/) , [Flare3D](http://flare3d.com) ,and [ND3D](http://www.nulldesign.de/projects/nd3d-as3-3d-engine/) .

* Includes a native 3D renderer.

* Supports particle masking (particles can be affected by selected actions).

* Uses fast-splicing arrays and object pools to improve performance.

* Gravity and deflector simulation.

* Action triggers (for creating complex conditional particle behaviors).

* XML serialization.

 
- - -
','svn','http://stardust-particle-engine.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/stardust-particle-engine/',NULL,'ActionScript, AS3, Flash, Flex, particle',NULL,'2010-06-17 23:18:25','2010-06-19 00:25:56');
INSERT INTO "libraries" VALUES(134,'Particlesun','A 3D or 2D Particle Engine for Actionscript 3.0.','  __ParticleSun__ is a fast, lightweight particle engine that uses 3D vectors for its calculations, allowing for the particles to be viewed in a three-dimensional environment.

  ![](http://blueflamedev.com/projects/particlesun/images/particlesun_logo.jpg) 

## Explorer Demo [](#Explorer_Demo) 

 ParticeSun Explorer is a quick, easy way to get settings for a particle effect. Just adjust the sliders, then copy the generated code. [Play with it here](http://blueflamedev.com/projects/particlesun/explorer) or [download it](http://blueflamedev.com/projects/particlesun/explorer/ParticleSunExplorer.air) .

## Download [](#Download) 

  [Click here](http://blueflamedev.com/projects/particlesun/download/ParticleSun%200.5.zip) to download version 0.5 of ParticleSun. This download includes source code, the ParticleSun Explorer, and a fully-documented API.

## Examples [](#Examples) 

  __ [Bubbles](http://blueflamedev.com/projects/particlesun/examples/bubbles) (3D)__ 

  __ [Rain](http://blueflamedev.com/projects/particlesun/examples/rain) (2D)__ 

  __ [Stars](http://blueflamedev.com/projects/particlesun/examples/stars) (3D)__ 

  __ [Gravity](http://blueflamedev.com/projects/particlesun/examples/gravity) (2D)__ 

## Documentation [](#Documentation) 

 ParticleSun is fully documented in ASDoc: [Check out the API](http://blueflamedev.com/projects/particlesun/api) .

 Implementation is meant to be easy and follows Flex coding conventions. Feel free to join in the development if you&#x27;re a fan of particle engines!

','svn','http://particlesun.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/particlesun/',NULL,'particleengine, particles, actionscript3, 3d, particlesun, flash',NULL,'2010-06-17 23:18:25','2010-06-18 14:18:06');
INSERT INTO "libraries" VALUES(135,'Bulk-loader','A library for managing multiple loadings with Actionscript 3 (AS3).',' BulkLoader is a minimal library written in Actionscript 3 (AS3) that aims to make loading and managing complex loading requirements easier and faster. BulkLoader takes a more dynamic, less architecture heavy aproach. Few imports and making heavy use of AS3&#x27;s dynamic capabilities, BulkLoader has a one-liner feel that doesn&#x27;t get in your way.

 BulkLoader hides the complexity of loading different data types in AS3 and provides a unified interface for loading, accessing and events notification for different types of content.

 This library is licensed under an open source MIT license. Features:

* Connection pooling.
* Unified interface for different loading types.
* Unified progress notification.
* Events for individual items and as groups.
* Priority
* Stop and resuming individually as well as in bulk.
* Cache management.
* Statistics about loading (latency, speed, average speed).
* Various kinds on progress indication: ratio (items loaded / items to load), bytes , and weighted percentage.
* Configurable number of retries.
* Configurable logging.
* Various assest types (XML, NetStreams, Swfs, Images, Sound, Text Files)

 Design goals:

* Minimal imports.
* Few method to learn.
* Consistent interface, regardless of content type.

 BulkLoader gracefully handles progress notification in these use cases:

* Few connections to open: bytes total can be used instantly.
* Many connections opened: progress by ratio
* Many connections opened for data of widely varying sizes: progress by weight.

','svn','http://bulk-loader.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/bulk-loader/',NULL,'actionscript, actionscript3, AS3, loading',NULL,'2010-06-17 23:18:26','2010-06-19 00:25:36');
INSERT INTO "libraries" VALUES(136,'Masapi','Flash/Flex/AIR AS3 Framework for the massive loading (MassLoad)','# Massive Loading API [](#Massive_Loading_API) 

 The target of the Masapi is to provide a complete framework dedicated to the management of the massive loading into a flash/flex application. It is designed to be as easy as possible to use but also to be as flexible as possible.

 There are the main features that the framework supports :

* Same interface for all load managers (URLLoader, Loader, ...)
* Easy massive loading classes
* Advanced massive loading (priority, dependencies)
* Advanced massive loading management (loading policy, loading information, ...)

 Useful links :

*  [Quick Start guide](http://code.google.com/p/masapi/wiki/QuickStart) 
*  [User Guide](http://code.google.com/p/masapi/wiki/UserGuide) 
*  [Online API Reference (2.0)](http://www.astorm.ch/masapi/doc/2.0) 
*  [Online API Reference (1.5)](http://www.astorm.ch/masapi/doc/1.5) 
*  [Google group](http://groups.google.com/group/masapi) 

 Other links :

*  [French tutorials](http://www.astorm.ch/blog/index.php?tag/Masapi) 
*  [Report a bug](http://code.google.com/p/masapi/issues/entry) 
*  [SVN updates](http://code.google.com/p/masapi/source/list) 

# Current version (April, 18 2010) [](#Current_version_(April,_18_2010)) 

 The current version is 2.0RC2 ( [r185](/p/masapi/source/detail?r=185) ). The old stable version is 1.5.

 Here are [Other bundles](http://masapi.googlecode.com/svn/trunk/bundles/) .

','svn','http://masapi.googlecode.com/svn/trunk',NULL,'GNU Lesser General Public License','http://code.google.com','http://code.google.com/p/masapi/',NULL,'Flash, ActionScript, MassLoad, MassiveLoading, Flex, File, AS3, Loading, External, Files, API, Dynamic, Data, Download, AIR',NULL,'2010-06-17 23:18:26','2010-06-19 00:25:49');
INSERT INTO "libraries" VALUES(137,'Swizframework','Brutally simple micro-architecture for Rich Internet Application development with Adobe Flex',' Swiz is a framework for Adobe Flex that aims to bring complete simplicity to RIA development. Swiz provides Inversion of Control, event handing, and simple life cycle for asynchronous remote methods. In contrast to other major frameworks for Flex, Swiz imposes no JEE patterns on your code, no repetitive folder layouts, and no boilerplate code on your development. Swiz represents best practices learned from the top RIA developers at some of the best consulting firms in the industry, enabling Swiz to be simple, lightweight, and extremely productive.

# Swiz has moved! [](#Swiz_has_moved!) 

## Site: [http://swizframework.org/](http://swizframework.org/)  [](#Site:) 

## Code: [http://github.com/swiz/](http://github.com/swiz/)  [](#Code:) 

## Getting Started: [http://swizframework.org/docs/getting-started/](http://swizframework.org/docs/getting-started/)  [](#Getting_Started:) 

## Mailing list: [http://groups.google.com/group/swiz-framework](http://groups.google.com/group/swiz-framework)  [](#Mailing_list:) 

','svn','http://swizframework.googlecode.com/svn/trunk',NULL,'Apache License 2.0','http://code.google.com','http://code.google.com/p/swizframework/',NULL,'ria, flex, as3, flash, mvc, di, ioc',NULL,'2010-06-17 23:18:26','2010-06-18 14:18:09');
INSERT INTO "libraries" VALUES(138,'Flex-slide','An application framework for Flex 2 and Flex 3.',' Slide is an application framework for projects built in Flex 2 or 3.

 Key features:

* Uses familiar design patterns
* Robust MVC structure
* View state management decoupled from view implementation
* Flexible approach to model and controller access, eliminating need for singleton classes.
* Separate view presentation from view functionality
* Incorporated debugging and development tools

 Benefits:

* Helps with project planning through visual design to production
* Increases the proportion of your codebase that is easily testable
* Makes dependencies transparent (appropriate abstraction and decoupling, not unhelpful indirection)
* Plays to Flex&#x27;s strengths, reducing the quantity of code
* Encourages convention, but does not depend on it
* Simplifies view management

','svn','http://flex-slide.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/flex-slide/',NULL,'Flex, AS3, actionscript, framework, mvc, application, test, memorphic',NULL,'2010-06-17 23:18:26','2010-06-19 00:25:41');
INSERT INTO "libraries" VALUES(139,'Vegas','VEGAS is an AS3, AS2 and SSAS OpenSource Framework.','# VEGAS version 1.7.3 [](#VEGAS_version_1.7.3) 

 Vegas is an opensource framework based on ECMAScript and ActionScript.

*  *The latest stable release : __ [1.7.2.1617](http://code.google.com/p/vegas/downloads/detail?name=version%201.7.2.1617.zip) __ * 

## Description [](#Description) 

 You can use the same framework in ActionScript 3,2,1 and **SSAS** to deploy your RIAs.

 VEGAS is based on Maashaack

*  [http://code.google.com/p/maashaack/](http://code.google.com/p/maashaack/) 

 .gadget-title { margin-bottom: 2px; }function resizeIframeHandler(opt_height) { var elem = document.getElementById(this.f); if (!elem) return; if (!opt_height) { elem.style.height = undefined; } else { opt_height = Math.max(10, opt_height); elem.style.height = opt_height + ''px''; } } gadgets.rpc.register("resize_iframe", resizeIframeHandler); gadgets.rpc.register(''set_title'', function(title) { var elem = document.getElementById(this.f + ''_title''); if (elem) { elem.innerHTML = gadgets.util.escape(title); } });## 

## 

 If you use the framework please show it :)



 ## 

## Install VEGAS [](#Install_VEGAS) 

*  [Install the SVN VEGAS sources with TortoiseSVN ( AS3 and AS2 )](/p/vegas/wiki/InstallVEGASwithSVN) 
* Download the sources with the top-level SVN repository : [http://vegas.googlecode.com/svn](http://vegas.googlecode.com/svn) 

## Documentation [](#Documentation) 

*  [Tutorials](/p/vegas/wiki/TutorialsVEGAS) 
*  [Documentation online](http://www.ekameleon.net/vegas/docs/) 
*  [French tutorials](http://wiki.mediabox.fr/tutoriaux/vegas) 

## Examples [](#Examples) 

*  [AS3 Flash CS3 examples](http://vegas.googlecode.com/svn/AS3/trunk/examples/) 

  __NB :__ Use your SVN client to update this examples (read the installation tutorial) but you can use the"export"process of your SVN client to manipulate all examples. The examples/ folder use svn:external to centralize all examples of VEGAS and this extensions.



## Licence [](#Licence) 

*  [Mozilla Public License 1.1 (MPL1.1)](http://www.opensource.org/licenses/mozilla1.1.php) 

## About [](#About) 

* Author : ALCARAZ Marc (aka eKameleon)
* Link : [http://www.ekameleon.net/blog](http://www.ekameleon.net/blog) 
* Mail : ekameleon@gmail.com

## Thanks [](#Thanks) 

*  [PowerFlasher](http://powerflasher.com/) and [FDT](http://fdt.powerflasher.com) OpenSource Licence.

  [ ![](http://vegas.googlecode.com/svn/gfx/FDT_Supported.png) ](http://fdt.powerflasher.com/) 

## Requirements [](#Requirements) 

 You can use my library in your projects with :

* AS3 : [Eclipse](http://www.eclipse.org/) and [FDT](http://fdt.powerflasher.com/) 
* AS3 : [Flex SDK](http://www.adobe.com/products/flex/sdk/) .

* AS2 : Flash MX2004 or Flash8 or Flash CS3/CS4.
* AS2 : [MTASC](http://www.mtasc.org/) 
* AS2 : [Eclipse](http://www.eclipse.org/) and [FDT](http://fdt.powerflasher.com/) 

* SSAS : __FC 1.5__ or __Flash Media Server 2__ or __Flash Media Server 3__ 
* SSAS : [FMS Eclipse](http://fczone.com/eclipse/) 
* SSAS : [JSEclipse](http://labs.adobe.com/technologies/jseclipse/) 

## FEATURES LIST [](#FEATURES_LIST) 

### VEGAS [](#VEGAS) 

* AS3, SSAS and AS2 Frameworks.
* SSAS library based on Core2 and EDEN.
* ADT (Abstract Data Type) libraries (queue, map, collections, stack, bag, iterator, etc.)
* Advanced events model based on W3C Dom2/3 with bubbling, capturing etc + FrontController pattern.
* IoC container and factory with hollywood principle implementation.
* Localization and configuration engines
* Advanced design pattern helpers (MVC, Visitor, Command, Observer, etc.)
* Advanced logging engine
* Drawing, colors, geometric tools
* Advanced task engine (system.process) with Sequencer, Batch, etc.
* Transition package (tweens, etc.)
* User Interface tools
* Advanced network and remoting tools

 In the SSAS(Server Side ActionScript) version for Flash Media Server :

* The same Remoting class like AS2 and AS3 libraries.
* asgard.server.Application class to creates your FMS application based on VEGAS.
* asgard.server.Gateway class to creates a Gateway based on the FrontController of Vegas (used AS2 Event in the client application and send this events with the NetConnection.call method directly in the server side FrontController.

### LunAS [](#LunAS) 

 This library based VEGAS to create components. It&#x27;s not library of components (like in Flash or in the Flex SDK) but a framework to build dynamic or visual components.

*  [LunAS page project (Google Code)](http://code.google.com/p/lun-as/) 

 Features :

* Progressbar, Scrollbar
* Full Button implementations
* Container implementations : SimpleContainer, ListContainer, ScrollContainer, AutoScrollContainer, MatrixContainer, CircleContainer
* Label package : Label, IconLabel, PaginationLabel
* TextInput : SimpleTextInput, VisualTextInput

### CalistA [](#CalistA) 

*  [CalistA page project (Google Code)](http://code.google.com/p/calista/) 

 CalistA is a little cryptography library written in Actionscript include in the VEGAS framework with

* hash : Adler32, CRC32, Blowfish, RXOR, SHA1, SHA256, MD5, TEA, Vigenère
* utils : LZW, Base64, Base8

### AST&#x27;r [](#AST&#x27;r) 

 ActionScript Template application framework based on VEGAS. This opensource library contains a skeletal to implement rich application with VEGAS and this extensions. For the moment this library is an experimental laboratory to implements a concrete example with VEGAS.

* Download the sources of this project in the Google Code page : [http://code.google.com/p/astr/](http://code.google.com/p/astr/) 

### NinjAS [](#NinjAS) 

 Full AS3 projects based on VEGAS (coverflow, swc helper, etc.)

*  [NinjAS page project (Google Code)](http://code.google.com/p/ninjas/) 

','svn','http://vegas.googlecode.com/svn/trunk',NULL,'Mozilla Public License 1.1','http://code.google.com','http://code.google.com/p/vegas/',NULL,'ActionScript, ECMAScript, FlashMediaServer, AS3, AS2, Flex, Flash, Eden, Collection, ADT, amfphp, remoting, framework, pattern, SSAS',NULL,'2010-06-17 23:18:26','2010-06-19 00:26:02');
INSERT INTO "libraries" VALUES(140,'Lowra','Low-level reworking on Actionscript 3.0',' But who&#x27;s __LowRA__ ?
Is it the codename of Laura Palmer ? yes, indeed ! :p
But __LowRA__ is more than that !

 __LowRA__ means : __Low__ -level __R__ ework on __A__ ctionscript 3.0
That&#x27;s the next-gen version of __pixlib__ .
It won&#x27;t use any features of Flex framework, never ! I suppose it could be nice later to release an extension of __LowRA__ which build some bridges beetween the both frameworks.

So what&#x27;s the goal of __LowRA__ at this time, now that we have native event system, mx logging framework and so on ?

I had to reinvent the wheel (sorry guyz :p) to fit my devt needs and code design vision.
That&#x27;s just a matter of taste, it&#x27;s not based on quality or performance.
Yeah, I feel frustrated with AS3/Flex2. Incredible, no ? ^^

','svn','http://lowra.googlecode.com/svn/trunk',NULL,'Mozilla Public License 1.1','http://code.google.com','http://code.google.com/p/lowra/',NULL,'as3, actionscript, ioc, lowra, pixlib',NULL,'2010-06-17 23:18:26','2010-06-18 14:18:01');
INSERT INTO "libraries" VALUES(141,'AS-Hive','an opensource community of developers who experiment with actionscript and other languages','  ![](http://www.headwinds.net/hive/hiveLogo.jpg) 

  __What is AS-HIVE?__ 

 AS-HIVE allows developers to rapidly build applications and games that rely on state, event, and load management of external media files.

 We&#x27;d like to foster a collective of creative people who design and develop primarily using Adobe&#x27;s Flash. We encourage input and participation from all ranges of people who code in Actionscript.

 Hard core developers may be interested to know that AS-HIVE is built on a state-based MVC framework but you don&#x27;t have to be a hard core developer to use it.

 Intermediate developers who don&#x27;t wish to advance the framework can try the samples so that one can see how to save time and energy allowing AS-HIVE to handle loading your external assets like xml, pngs, flvs and mp3s. AS-HIVE also helps you animate screens by creating sequences that build up and tear down before moving to the next state.

 By integrating other open source projects like Tweener and Papervision3D, AS-HIVE offers a robust and reliable mechanism for manipulating 2D and 3D content allowing the developer to focus on architecture and flow.

  __How do I learn about AS-HIVE?__ 

 The best way to learn HIVE is to ask a lot of questions and [join our discussion group](http://groups.google.com/group/as-hive) .

  [as-docs](http://www.headwinds.net/hive/docs/) 

  [Samples](http://code.google.com/p/as-hive/wiki/SAMPLES) 

  [Getting Started](http://code.google.com/p/as-hive/wiki/GETTING_STARTED) 

  [Documentation](http://code.google.com/p/as-hive/wiki/DOCUMENTATION) 

 
- - -
  __How do I get AS-HIVE?__ 

  [GET HIVE](http://code.google.com/p/as-hive/wiki/GET_HIVE?updated=GET_HIVE&amp;ts=1187922904) 

## Wiki Watch [](#Wiki_Watch) 

  *Aug 20, 2009* 

 new [Union and asset loading demo](http://code.google.com/p/as-hive/wiki/SAMPLES_v3) on the sample v3 page.

  *Aug 11, 2009* 

 There is a new [swfaddress sample](http://code.google.com/p/as-hive/wiki/SAMPLES) demonstrating how it can be used with HIVE for deep linking.

  [New Examples](http://code.google.com/p/as-hive/wiki/EXAMPLES) : 1) broadcasting onEnterFrame events from your Main to States and 2) how use the same graphic for multiple sprite ( *Dec 19/2007* )

## Blog News [](#Blog_News) 

  *Feb 15, 2009* 

 Jovan has launched [buckup.ca](http://www.buckup.ca) and is working on some cool new features within his branch which we hope to bring into the 0.3 release later this spring.

 Although we&#x27;re big fans of Tweener, we&#x27;re also contemplating opening the LayoutManager up to other tween libraries like Tweenlite, Tweensy, and gTween so that they work like other plug-ins and can choose which ever Tween library you like best; possibly even mix and match.

  *Jan 19, 2009* 

 Peter is working on telnet project. Check out [flashterm](http://www.flashterm.com) . Read [his blog post](http://www.peternitsch.net/blog/?p=84) 

  *Jan 15, 2009* 

 spring cleaning time! we realize that this site isn&#x27;t as easy to use and learn from as say a site like jquery.com which is so compelling as it bridges motion on the desktop and mobile. Of course the Flash 10 player will be on Android soon, and AS-HIVE is great fit for Flash 10! So we have some work to do this year to catch up to sites like jquery.

 We will add the missing hello world demo and attempt to better introduce the framework.

  *Jun 1, 2008* 

 Pete has finished his work on the new plug-in manager, and you can grab it from the featured downloads or the SVN (Source page).

 If you need a copy of the AS3 Webservice package by Carlo Alducente you can get it from the featured downloads.

  *Jan 8, 2008* 

 Pete has started to update HIVE to [give us plug-in support](http://www.peternitsch.net/blog/?p=19) so that we can swap out libraries as needed. For instance, if we wanted to play with different branches of PV3D we will soon be able to use the effects or GreatWhite 2.0 libraries depending on what we want to do in each state.

  *Nov 18, 2008* 

 Pete&#x27;s work: an online product guide for Telus powered by the Hive framework [read more](http://www.peternitsch.net/blog/?p=17) 

  *Nov 16, 2008* 

 Carlo&#x27;s work: an impressive Webservice package for AS3 which we may include in a future Hive build. [read more](http://labs.alducente.com) 

 
- - -
','svn','http://as-hive.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/as-hive/','http://www.headwinds.net/hive/docs/','AS3, MVC, Flash, papervision3D, Tweener, state, framework, hive, actionscript','','2010-06-17 23:18:26','2010-06-18 14:17:37');
INSERT INTO "libraries" VALUES(142,'Fosfr','AS3 open source framework','  ![](http://www.jeffdepascale.com/images/fosfrLogo.jpg) 

 UPDATED 09.23.09: Currently releasing Fosfr .9 nightly builds, these are growing very stable and .9 is a few days of stability testing away now. Fosfr .8 is still available in the downloads section for now, a new example site built on .9 will be built once .9 is final. See the wiki doc [fosfrNightlyBuilds](/p/fosfr/wiki/fosfrNightlyBuilds) for limited info on where to begin with implementing this preview release. Preliminary documentation (still in the works) is available at: [http://www.jeffdepascale.com/documentation/fosfrPreRelease/](http://www.jeffdepascale.com/documentation/fosfrPreRelease/) 

 Info on .9: See [nextRelease](/p/fosfr/wiki/nextRelease) doc in wiki. Pushing towards a final 1.0 release, and the change list is long and growing, but the vast majority is tied to overhauling existing functionality to make the framework more digestable and all around useful and adding the last pieces of wish list functionalities before locking down to bug fixes, which will begin after this release through 1.0.

 Some of the bigger featues of .9 BETA (anticipated final release by 11/15):

 -Fosfr is now implemented using the provided SWC files and the included SWF library file (the com folder is still provided for reference). see the guide [SWCImplementationGuide](/p/fosfr/wiki/SWCImplementationGuide) for information. This reduces the framework footprint to 13kb on initial load, a library load of 27kb (pulled automatically in the initial preload), and 4kb for all other framework files. This means substantially reduced load times, much faster compile times (since SWC files are precompiled into bytecode) and initial preloader graphics appear very quickly with only 13kb of overhead on initial load.

 The Notifier panel as of Fosfr .9 build 120 (showing optional extended information):
 ![](http://www.jeffdepascale.com/images/notifierGrab.jpg) 

 -Notifier (formerly debug) - Error trapping, variable panel size, ability to prioritize debug messaging, player info, garbage collection forcing (debug layers only), real time property inspectors, and an optional visual error beacon for trapped errors.

 -Notifier additionally now features a code injection system; see [codeInjection](/p/fosfr/wiki/codeInjection) for details on valid expressions. Adding functionality to this on an ongoing basis right now.

 -A new sound controller

 -overhaul of loader event notifications

 -overhaul of how external classes are handled in the framework; much tighter integration all around.

 -utilization of a custom namespace to close some of the open holes in the framework.

 Check out the [nextRelease](/p/fosfr/wiki/nextRelease) doc in the wiki for the full revision list.

 NOTE - .8 beta was released with an outdated version of swfaddress. please download the latest version at: [http://www.asual.com/swfaddress/](http://www.asual.com/swfaddress/) This will be addressed in the .9 release.

 Updated 5.18.09 - Current release: .8 BETA

 A complete framework for AS3 site development, Fosfr simplies building full sites designed with a master SWF and multiple sub SWF format. Fosfr handles debugging, tracking, setting up site navigation, loading and unloading sub pages, automatic preloading (via Prequel), SWFAddress handling, simple access to Flashvars, query string params, and cookies, and does it all from implementations as simple as two lines of code per document class. Comes with a complete set of base classes for simple access to all of the methods and features of Fosfr right at Document class level, and optionally can run from a single configuration xml file for ease of access to site parameters without the need to recompile. FosfrLite (included), a streamlined version of Fosfr, provides access to the various pieces of Fosfr without the navigation package for loading sub SWF&#x27;s.

 The current release of Fosfr is packaged with SWFAddress 2.2 ( [http://www.asual.com/swfaddress](http://www.asual.com/swfaddress) ) and Prequel 1.0 ( [http://code.google.com/p/prequel-preloader](http://code.google.com/p/prequel-preloader) )

 Beta documentation available at:

  [http://www.jeffdepascale.com/documentation/fosfr](http://www.jeffdepascale.com/documentation/fosfr) 

 Sample site implementation included in download is visible online here:

  [http://www.jeffdepascale.com/examples/fosfrFullSite](http://www.jeffdepascale.com/examples/fosfrFullSite) 

','svn','http://fosfr.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/fosfr/',NULL,'Flash, actionscript3, as3, actionscript, framework, microsite, debug, preload, tracking, swfaddress, deeplink, injection',NULL,'2010-06-17 23:18:26','2010-06-18 14:17:58');
INSERT INTO "libraries" VALUES(143,'Facebook-actionscript-api','Actionscript 3.0 Client for the Facebook Platform API','  ![](http://www.danieldura.com/post_images/flash_facebook.jpg) 

 The new ActionScript 3.0 Client Library for Facebook Platform API, fully supported by Facebook and Adobe, makes it easy to build applications that combine the strengths of the Flash Platform and Facebook Platform.

 The Adobe Flash Platform and Facebook Platform provide the ideal solution for building rich, social experiences on the web. Flash is available on more than 98% of Internet-connected PCs, so people can immediately access the applications, content, and video that enable social interactions. The Facebook Platform is used by millions of people everyday to connect and share with the people in their lives. Together, both platforms allow you to:

* Share: Create rich interactions for users to share with friends.
* Have fun: Make games social; let users compete against their friends.
* Connect: Let users connect to your RIAs with Facebook Connect.
* Solve problems: Build RIAs that harness the power of community.
* Reach people: Reach millions of Facebook users through social distribution.

### Getting Started [](#Getting_Started) 

 For tutorials, articles, and videos on using the new API, visit the [Facebook page](http://www.adobe.com/devnet/facebook/) on the Adobe Developer Center. You can also see the [docs](http://facebook-actionscript-api.googlecode.com/svn/release/current/docs/index.html) for the most recent and stable build.

### Project History [](#Project_History) 

 The API was originally developed by [Jason Crist](http://pbking.com/) and authored under the direction of [Terralever](http://terralever.com/) , an online marketing firm with strength in Flash-based media. Although Adobe has taken over day-to-day management of the project, Jason still maintains a consulting role. Under the direction of Adobe, the highly experienced team of Flash and Flex experts from [gskinner.com](http://www.gskinner.com) have developed and architected the latest iteration of the API.

 If you are looking for the deprecated code and samples, see the&#x27;tag/version2&#x27; directory in the repository or search for files with the&#x27;Deprecated&#x27; tag in the downloads section.

 For questions and inquiries about this library, please contact Daniel Dura at Adobe Systems via email at ddura@adobe.com. Submit bug reports, patches, or feature requests via the issue tracker.

','svn','http://facebook-actionscript-api.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/facebook-actionscript-api/',NULL,'flash, actionscript, as3, facebook, flex, api',NULL,'2010-06-17 23:18:26','2010-06-18 14:17:54');
INSERT INTO "libraries" VALUES(144,'AS3facebooklib','ActionScript 3.0 API for Facebook',' The Facebook API provides an ActionScript 3.0 for interacting with the Facebook Platform API.

','svn','http://as3facebooklib.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/as3facebooklib/',NULL,'actionscript, as3, library, api, adobe, facebook',NULL,'2010-06-17 23:18:26','2010-06-18 14:17:40');
INSERT INTO "libraries" VALUES(145,'AS3corelib','ActionScript 3.0 library for several basic utilities.',' The corelib project is an ActionScript 3 Library that contains a number of classes and utilities for working with ActionScript 3. These include classes for MD5 and SHA 1 hashing, Image encoders, and JSON serialization as well as general String, Number and Date APIs.

','svn','http://as3corelib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3corelib/',NULL,'actionscript, as3, library, api, adobe, corelib, md5, json, parsing, png, jpg, encryption',NULL,'2010-06-17 23:18:26','2010-06-18 14:17:39');
INSERT INTO "libraries" VALUES(146,'AS3flexunitlib','ActionScript 3.0 framework for unit testing.',' FlexUnit is a unit testing framework for Flex and ActionScript 3.0 applications and libraries. It mimics the functionality of JUnit, a Java unit testing framework, and comes with a graphical test runner.

 As of August 20, 2008, FlexUnit will no longer be actively developed on Google Code. It is now being maintained at:

  [http://opensource.adobe.com/wiki/display/flexunit/](http://opensource.adobe.com/wiki/display/flexunit/) 

','svn','http://as3flexunitlib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3flexunitlib/',NULL,'actionscript, as3, library, api, adobe, flexunit, testing, junit',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:41');
INSERT INTO "libraries" VALUES(147,'AS3flickrlib','ActionScript 3.0 API for Flickr','The Flickr library is an ActionScript 3.0 API for the online photo sharing application, Flickr. It provides access to the entire Flickr API.

','svn','http://as3flickrlib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3flickrlib/',NULL,'actionscript, as3, library, api, adobe, flickr',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:41');
INSERT INTO "libraries" VALUES(148,'AS3mapprlib','ActionScript 3.0 API for Mappr','Mappr is a service and application that combines images from Flickr with geolocational information. The Mappr ActionScript 3.0 API gives you access to Mappr''s geo-tagged image data.








','svn','http://as3mapprlib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3mapprlib/',NULL,'actionscript, as3, library, api, adobe, mappr, geo-tag, flickr',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:44');
INSERT INTO "libraries" VALUES(149,'AS3syndicationlib','ActionScript 3.0 library for handling syndication feeds.',' Use the syndication library to parse Atom and all versions of RSS easily. This library hides the differences between the formats so you can parse any type of feed without having to know what kind of feed it is.

 For the latest and greatest version of this library, we recommend pulling the source using SVN.

','svn','http://as3syndicationlib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3syndicationlib/',NULL,'actionscript, as3, library, api, adobe, syndication, rss, atom, parse',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:47');
INSERT INTO "libraries" VALUES(150,'AS3odeolib','ActionScript 3.0 API for Odeo',' The Odeo API provides an ActionScript 3.0 interface for searching and retrieving podcasts from Odeo.

 NOTE : Odeo has removed their dynamic RSS feeds and apis, and thus this library no longer works and is no longer being maintained.

','svn','http://as3odeolib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3odeolib/',NULL,'actionscript, as3, library, api, adobe, odeo, podcasts',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:45');
INSERT INTO "libraries" VALUES(151,'AS3youtubelib','ActionScript 3.0 API for YouTube','The YouTube API provides an ActionScript 3.0 interface to search videos from YouTube.


','svn','http://as3youtubelib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3youtubelib/',NULL,'actionscript, as3, library, api, adobe, youtube, video',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:48');
INSERT INTO "libraries" VALUES(152,'AS3ebaylib','ActionScript 3.0 API for eBay',' The eBay ActionScript 3.0 library provides an interface between the eBay XML API and ActionScript 3.0. This open-source library will allow developers to create novel and innovative applications leveraging both eBay&#x27;s marketplace services and Adobe&#x27;s Flash Player 9 runtime! It is written in ActionScript 3.0, so any environment using ActionScript 3.0 can use this library, including Adobe Flex 2 and Adobe Flash Pro 9.

 Download the beta release of the eBay Actionscript Library and check out the included Samples and Tutorial. Also browse the included ASDoc for full code documentation!

','svn','http://as3ebaylib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3ebaylib/',NULL,'actionscript, as3, library, api, adobe, ebay',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:40');
INSERT INTO "libraries" VALUES(153,'AS3awss3lib','ActionScript 3.0 library for interacting with Amazon S3',' This is an AS3 library for accessing Amazon&#x27;s S3 service. It only works in Apollo because of restrictions in the browser player.

 It&#x27;s pretty comprehensive. It supports managing buckets and objects. I haven&#x27;t implemented some of the access control stuff yet, or the bucket listing pagination features. These are trivial to add -- I just haven&#x27;t found the time yet. The hard part (the protocol) works perfectly, so adding functionality is pretty straightforward.

 This library has the following dependencies:

 As3Crypto ( [http://crypto.hurlant.com/](http://crypto.hurlant.com/) )

 as3corelib ( [http://code.google.com/p/as3corelib/](http://code.google.com/p/as3corelib/) )

 The free Flex SDK ( [http://www.adobe.com/products/flex/sdk/](http://www.adobe.com/products/flex/sdk/) )

 There is currently no zip archive available. Please check the code out using subversion.

','svn','http://as3awss3lib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3awss3lib/',NULL,'actionscript, as3, adobe, flex, apollo, corelib, amazon, s3, cantrell',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:38');
INSERT INTO "libraries" VALUES(154,'AS3soundeditorlib','Actionscript 3.0 library for sound playback, spectrum display, and cue point display',' Application displays a spectrum of the mp3 file, displays cue points from a file, and allows navigation and playback of mp3 and navigation between cue points. MIT-license.

 Depends on [as3tobydietrichcorelib](http://as3tobydietrichcorelib.googlecode.com) .

','svn','http://as3soundeditorlib.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/as3soundeditorlib/',NULL,'actionscript, as3, library, api, flash, sound, music, mp3, air',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:46');
INSERT INTO "libraries" VALUES(156,'AS3notificationlib','A notification framework written in AS3 for the Adobe Integrated Runtime (AIR)',' This project makes it easy to add cross-platform notifications to your AIR application. It handles"native system notifications"like the dock icon bouncing and the taskbar icon flashing, and it allows you to easily create alert"pop-ups".

 There is currently no zip archive available. Please check the code out using subversion.

','svn','http://as3notificationlib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3notificationlib/',NULL,'actionscript, air, flex, flash, notification',NULL,'2010-06-17 23:18:27','2010-06-18 14:17:44');
INSERT INTO "libraries" VALUES(157,'AS3preferenceslib','An AIR library for storing preferences',' An AIR library for storing preferences. It worries about persistence and even encryption for you.

 There is currently no zip archive available. Please check the code out using subversion.

','svn','http://as3preferenceslib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3preferenceslib/',NULL,'actionscript, as3, air, preferences',NULL,'2010-06-17 23:18:28','2010-06-18 14:17:46');
INSERT INTO "libraries" VALUES(158,'AS3nativealertlib','An AIR alert that appears in a native window',' In Flex, we have alerts, but they are Flex windows rather than native OS windows. This is fine in the browser, but doesn&#x27;t make much sense in AIR (Adobe Integrated Runtime). In AIR, we want our alerts to show up in their own native windows. This project creates Flex-like alerts, but they are native windows.

 There is currently no zip archive available. Please check the code out using subversion.

','svn','http://as3nativealertlib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3nativealertlib/',NULL,'air, actionscript, alert, apollo, adobe',NULL,'2010-06-17 23:18:28','2010-06-18 14:17:44');
INSERT INTO "libraries" VALUES(159,'Ascollada','actionscript library for parsing Collada files',' A actionscript library for parsing Collada files.

','svn','http://ascollada.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/ascollada/',NULL,'collada, AS3, flash, flex, 3D, papervision3d, suite75, actionscript',NULL,'2010-06-17 23:18:28','2010-06-18 14:17:49');
INSERT INTO "libraries" VALUES(160,'Lastfm-as3','Actionscript 3.0 API to access the Last.fm web services',' This is an Actionscript 3.0 API to access all the available Last.fm web services. This should hopefully save some people time from doing all the grunt work of parsing feeds and sorting through all that lovely data that Last.fm provides. It is currently a work in progress so not all the services are currently available. The packages are divided similar to the audioscrobbler services page: [http://www.audioscrobbler.net/data/webservices/](http://www.audioscrobbler.net/data/webservices/) ( [UserData](/p/lastfm-as3/wiki/UserData) , ArtistData, etc). Documentation is also an important goal of this project so keep an eye on the ever-growing wiki. These packages can be used in Adobe Flex, AIR, or Flash applications.

  __Update 09-15-2007:__ Completed wiki for all User Data services. Also reworked some code / events in the Session class and update it&#x27;s wiki page.

  __Update 09-12-2007:__ Added all services for retrieving user information from the Last.fm services. These include:

*  [Profile Information](/p/lastfm-as3/wiki/UserDataProfile) 
*  [Top Artists](/p/lastfm-as3/wiki/UserDataTopArtists) 
*  [Top Albums](/p/lastfm-as3/wiki/UserDataTopAlbums) 
*  [Top Tracks](/p/lastfm-as3/wiki/UserDataTopTracks) 
*  [Top Tags](/p/lastfm-as3/wiki/UserDataTopTags) 
*  [Top Tags for Artist](/p/lastfm-as3/wiki/UserDataTopArtistTags) 
*  [Top Tags for Album](/p/lastfm-as3/wiki/UserDataTopAlbumTags) 
*  [Top Tags for Track](/p/lastfm-as3/wiki/UserDataTopTrackTags) 
*  [Friends List](/p/lastfm-as3/wiki/UserDataFriends) 
*  [Neighbours](/p/lastfm-as3/wiki/UserDataNeighbours) 
*  [Recent Tracks](/p/lastfm-as3/wiki/UserDataRecentTracks) 
*  [Recent Banned Tracks](/p/lastfm-as3/wiki/UserDataRecentBannedTracks) 
*  [Recent Loved Tracks](/p/lastfm-as3/wiki/UserDataRecentLovedTracks) 
*  [Recent Journals](/p/lastfm-as3/wiki/UserDataRecentJournals) 
*  [Weekly Chart List](/p/lastfm-as3/wiki/UserDataWeeklyChartList) 
*  [Weekly Artists Chart](/p/lastfm-as3/wiki/UserDataWeeklyArtistsChart) 
*  [Weekly Albums Chart](/p/lastfm-as3/wiki/UserDataWeeklyAlbumsChart) 
*  [Weekly Tracks Chart](/p/lastfm-as3/wiki/UserDataWeeklyTracksChart) 
*  [Manual Recommendations](/p/lastfm-as3/wiki/UserDataManualRecommendations) 
*  [System Recommendations](/p/lastfm-as3/wiki/UserDataSystemRecommendations) 
*  [User Events / Friends&#x27; Events / System Event Recommendations](/p/lastfm-as3/wiki/UserDataUserEvents) 
*  [Taste-O-Meter](/p/lastfm-as3/wiki/UserDataTasteOMeter) 

 Also added was a [scrobbling class](/p/lastfm-as3/wiki/ClientScrobbler) using the latest 1.2 submission protocol.

','svn','http://lastfm-as3.googlecode.com/svn/trunk',NULL,'GNU General Public License v2','http://code.google.com','http://code.google.com/p/lastfm-as3/',NULL,'actionscript, as3, lastfm, last.fm, scrobble, audioscrobbler, flash, flex, adobe, air, api',NULL,'2010-06-17 23:18:28','2010-06-19 00:14:50');
INSERT INTO "libraries" VALUES(161,'AS3cards','An ActionScript 3.0 card engine and example games',' The as3cards project provides a skinnable ActionScript 3.0 card engine for creating playing card games, with an example implementation of Klondike Solitaire.

','svn','http://as3cards.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/as3cards/',NULL,'as3, cards, flex, klondike, solitaire',NULL,'2010-06-17 23:18:28','2010-06-18 14:17:39');
INSERT INTO "libraries" VALUES(162,'Flexircclient','ActionScript 3 based IRC library',' Flex IRC Client aims to be a Flex / Flash based IRC Client. Currently most browser-based chat solutions are either proprietary or applets. Flex IRC Client wants to bring the power of IRC to the majority of the Internet-users without requiring a download or an install.

 This project is a port of the Java-based [PircBot](/p/flexircclient/wiki/PircBot) to ActionScript 3/Flex. This project distributes 2 files:

* the actual IRC client (flexircclient)
* the IRC protocol library (firc)

 The client can be used without downloading the library but if you want to develop and recompile the client you will need the library.

 At the moment the client is useable but it still needs some polish.

 Enjoy.

','svn','http://flexircclient.googlecode.com/svn/trunk',NULL,'Artistic License/GPL','http://code.google.com','http://code.google.com/p/flexircclient/',NULL,'IRC, ActionScript3, Flex, Flash',NULL,'2010-06-17 23:18:28','2010-06-19 00:25:42');
INSERT INTO "libraries" VALUES(163,'AS3httpclient','ActionScript 3 utils/classes to extend HTTP/HTTPS APIs in Flash Player 9 (onwards)',' This project is meant to extend the capabilities Adobe Flash Player 9 for HTTP/HTTPS related things.

 Following are the objectives:-

1. Support for HTTP Basic Authentication through HTTP/GET
1. Way to get different HTTP status messages
1. Add support for HTTPS

 Background:-

 One the classes is HTTPURLLoader, which was created to do HTTP Basic Authentication through HTTP/GET which is not doable with Adobe Flash Player 9 URLLoader API. For example, Bloglines API needs that kind of authentication.

 HTTPURLLoader also provides different HTTP status messages and can be used for different HTTP methods.

','svn','http://as3httpclient.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3httpclient/',NULL,'actionscript, as3, api, urlloader, http, client, httpclient, library',NULL,'2010-06-17 23:18:28','2010-06-18 14:17:42');
INSERT INTO "libraries" VALUES(164,'Ascanvas','An adapter of HTML Canvas and fl.display.Graphics',' ASCanvas is an implementation of the HTML 5 Canvas element for the Flash environment, written in ActionScript. Older implementations are available supporting Flash 9, however our new code base targets the Flash 10 player and Adobe&#x27;s asc.jar ActionScript compiler.

 This project is now available as a CC 0 / Public Domain resource. It is also available under less liberal licensing; though CC0 allows many provisions for areas in which public domain copyright is not appropropriate.

    html:<canvas id="myCanvas"width="100"height="100"/>JavaScript and/or ActionScript
    var canvas = document.createElement(&#x27;canvas&#x27;);
    document.body.appendChild(canvas);
    var ctx = canvas.getContext(&#x27;2d&#x27;);
    // Draw shapes
    ctx.beginPath();
    ctx.arc(75,75,50,0,Math.PI*2,true); // Outer circle
    ctx.moveTo(110,75);
    ctx.arc(75,75,35,0,Math.PI,false); // Mouth
    ctx.moveTo(65,65);
    ctx.arc(60,65,5,0,Math.PI*2,true); // Left eye
    ctx.moveTo(95,65);
    ctx.arc(90,65,5,0,Math.PI*2,true); // Right eye
    ctx.stroke();
','svn','http://ascanvas.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/ascanvas/',NULL,'actionscript, actionscript3.0, html, canvas, quartz, flash, web2.0, drawing, graphics, AS3',NULL,'2010-06-17 23:18:28','2010-06-19 00:53:48');
INSERT INTO "libraries" VALUES(165,'Dopplr-as3','actionscript 3 code for accessing data from dopplr.com&#39;s api',' This project is intended to get you up and running with accessing [Dopplr](http://dopplr.com) data from Flash 9 applications.

 It is also a playground for me to experiment with finding the most elegant and aesthetically pleasing way to code such applications. Your input is welcome if you have opinions on how the code might be improved, or if you want to implement some of the [Dopplr API methods](http://dopplr.pbwiki.com/) I didn&#x27;t get to yet.

 Initial [Documentation](/p/dopplr-as3/wiki/Documentation) is online, there is [example code](http://dopplr-as3.googlecode.com/svn/trunk/src/com/dopplr/examples/) in the source tree and running examples will follow soon.

  [ ![](http://farm3.static.flickr.com/2091/1712306250_b53c81c6df_o.png) ](http://www.flickr.com/photos/blackbeltjones/1712306250/) 

','svn','http://dopplr-as3.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/dopplr-as3/',NULL,'actionscript3, dopplr, flash, flex, api, as3',NULL,'2010-06-17 23:18:28','2010-06-18 14:17:52');
INSERT INTO "libraries" VALUES(166,'AS3webservice','Open-source Webservice class implementation in AS3 for Flash CS3 IDE.',' Open-source Webservice class implementation in AS3 for Flash CS3 IDE.

 Download [*.mxp extension here](http://as3webservice.googlecode.com/svn/trunk/build/as3webservice.zip) .

 Browse [source here](http://code.google.com/p/as3webservice/source/checkout) .

 Example code:

    import be.wellconsidered.services.WebService;
    import be.wellconsidered.services.Operation;
    
    import be.wellconsidered.services.events.OperationEvent;
    
    var ws = new WebService("http://www.webservicex.net/WeatherForecast.asmx?wsdl");
    var op:Operation = new Operation(ws);
    
    op.addEventListener(OperationEvent.COMPLETE, onResult);
    op.addEventListener(OperationEvent.FAILED, onFault);
    
    op.GetWeatherByPlaceName("new york");  
    
    function onResult(e:OperationEvent):void { trace(e.data); }
    function onFault(e:OperationEvent):void { trace(e.data); }
','svn','http://as3webservice.googlecode.com/svn/trunk','src/','GNU General Public License v3','http://code.google.com','http://code.google.com/p/as3webservice/','','webservice, as3, flash, cs3, operation, wsdl','','2010-06-17 23:18:28','2010-06-19 00:53:46');
INSERT INTO "libraries" VALUES(167,'AS3jayrock','AS3 wrapper for Jayrock communication',' AS3 wrapper for Jayrock communication.

  __Example:__ 

    import be.wellconsidered.jayrock.events.JayrockEvent;
    import be.wellconsidered.jayrock.Jayrock;
    
    private function init():void
    {
    	var jrSearch:Jayrock = new Jayrock("http://XXX/XXX/wsSearch.ashx");
    	
    	jrSearch.addEventListener(JayrockEvent.COMPLETE, onResult, false, 0, true);
    	jrSearch.addEventListener(JayrockEvent.ERROR, onError, false, 0, true);
    	
    	jrSearch.searchit({"TAG":"XXX"});
    }
    
    private function onResult(e:JayrockEvent):void
    {
    	for(var i:* in e.data)
    	{
    		trace(i +":"+ e.data[i]);
    	}
    }
    
    private function onError(e:JayrockEvent):void
    {
    	trace(e.data);
    }
','svn','http://as3jayrock.googlecode.com/svn/trunk',NULL,'GNU Lesser General Public License','http://code.google.com','http://code.google.com/p/as3jayrock/','','as3,  actionscript,  json,  jayrock,  asp.net,  wellconsidered,  pieter,  michels','','2010-06-17 23:18:29','2010-06-19 00:53:40');
INSERT INTO "libraries" VALUES(168,'AS3maillib','An ActionScript 3 mail library',' The goal of the ActionScript 3 mail library is to provide easy access to mail protocols such as SMTP and POP3.

### Progress [](#Progress) 

 To keep you informed on the progress being made in the development of this library, I&#x27;ll try to update this as frequently as possible. Please keep in mind I only have limited time to work on this project.

 So far, the following has been done:

* Stateful SMTP support (EHLO, MAIL, RCPT, DATA, RSET, QUIT)
* The Internet Message Format ( [RFC 2822](http://tools.ietf.org/html/rfc2822) ) has been largely implemented
* Documentation generated for all public classes
*  __Initial import of both the source and documentation has been done, all progress so far is available under [Source](http://code.google.com/p/as3maillib/source/browse/trunk/src/org/oxcode/mail/) __ 

 Next up:

* Implementation of MIME
* POP3 support

### Key aspects used in the development of this library [](#Key_aspects_used_in_the_development_of_this_library) 

* Standards compliant implementation of the supported protocols ( [RFC 1939](http://tools.ietf.org/html/rfc1939) , [RFC 2821](http://tools.ietf.org/html/rfc2821) and [RFC 2822](http://tools.ietf.org/html/rfc2822) )
* All code must follow the [ActionScript 3 Coding Conventions](http://opensource.adobe.com/wiki/display/flexsdk/Coding+Conventions) set by Adobe
* Use of design patterns and OO best practices
* Documented using the ASDoc tool

','svn','http://as3maillib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3maillib/',NULL,'as3, actionscript, mail, smtp, pop3',NULL,'2010-06-17 23:18:29','2010-06-19 00:25:26');
INSERT INTO "libraries" VALUES(169,'Flash-camouflage','Flash Camouflage is a skinning framework for AS 3 Applications','  ![](http://flashartofwar.com/wp-content/uploads/2008/08/flash_camo_logo_white.gif) 

 Flash Camo (for short) is a graphics framework that allows AS 3 applications to be easily skinned from pngs, jpgs, or gifs. The framework is broken down into 3 core areas: Decals, the CSS Parser, and the [CamoDisplay](/p/flash-camouflage/wiki/CamoDisplay) . These systems can be used individually or combined to fit your needs. When used together they form a powerful set of tools to help skin and style any Flash application. With Camo’s modular approach, you can use as little or as much of the framework as you want. The entire framework is under 35k.

 Flash Camo is open source (under the MIT License), is compatible with FlashPlayer 9/10, Flex 3, and AIR. It can be built with the open source Flex SKD compiler or used in Flash CS 3/4 as a swc.

  __I have created a new Google Group to help answer questions about the framework and start open discussions on tips, tricks, and problems. Check it out here [http://groups.google.com/group/flash-camouflage](http://groups.google.com/group/flash-camouflage) __ 

  __Flash Tuts Plus Tutorial - Part 2 of my in depth tutorial walk through on how to use Flash Camo up on [http://flash.tutsplus.com](http://flash.tutsplus.com) . Check out Part 2 here: [http://flash.tutsplus.com/tutorials/workflow/intro-to-flash-camo-part-2](http://flash.tutsplus.com/tutorials/workflow/intro-to-flash-camo-part-2) __ 

  __Flash Tuts Plus Tutorial - I just wrote an in depth tutorial walking through how to use Flash Camo that covers how I built [http://jessefreeman.com](http://jessefreeman.com) . Check out Part 1 here: [http://flash.tutsplus.com/tutorials/workflow/intro-to-flash-camo-part-1](http://flash.tutsplus.com/tutorials/workflow/intro-to-flash-camo-part-1) __ 

  __Camo, v2.2.1 is now out and tagged. This includes minor bug fixes to the BoxModel. I also added an updated API Docs to the downloads along with a new SWC.__ 

  __Camo, v2.2 is coming out very soon. There is an early tag of it if you want to try it out but I will be updating all of the documentation on the site to reflect the new changes. The updates found in Camo 2.2 focus on a rebuild of the DecalSheet system, removing unneeded classes from the framework and adding customization to the TypeHelperUtil.__ 

  __Camo, v2.1 has just been released along with cleanups to the svn repo. If you had checked out the Camo from the trunk before please recheck out the entire trunk since it is up to date with 2.1. Also you should probably use tags of the Framework to help when future features are added to hopefully not break your code.__ 

','svn','http://flash-camouflage.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/flash-camouflage/',NULL,'Flash, ActionScript3, BitmapData, XML, MVC, Display, CSS, Sprites, Flex',NULL,'2010-06-17 23:18:29','2010-06-18 14:17:55');
INSERT INTO "libraries" VALUES(170,'Flexlib','Open Source Flex Component Library','  ![](http://dougmccune.com/flexlib/flexlib_logo.jpg) 

 The FlexLib project is a community effort to create open source user interface components for Adobe Flex 2, 3 and 4.

 Current components: AdvancedForm, Base64Image, EnhancedButtonSkin, CanvasButton, ConvertibleTreeList, Draggable Slider, Fire, Highlighter, HorizontalAxisDataSelector IconLoader, ImageMap, PromptingTextArea, PromptingTextInput, Scrollable Menu Controls, SuperTabNavigator, Alternative Scrolling Canvases, Horizontal Accordion, TreeGrid, FlowBox, Docking ToolBar, Flex Scheduling Framework

 See the [Full Component List](/p/flexlib/wiki/ComponentList) .

 Browse the [documentation](http://flexlib.googlecode.com/svn/trunk/docs/index.html) , download the [source code](http://code.google.com/p/flexlib/source) , or learn [How to Contribute](/p/flexlib/wiki/HowToContribute) to the project.

','svn','http://flexlib.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/flexlib/',NULL,'flex2, as3, actionscript, adobe, components, mxml, flex, flex3, flex4, spark',NULL,'2010-06-17 23:18:29','2010-06-18 14:17:56');
INSERT INTO "libraries" VALUES(171,'AS3-fullscreen-lib','A small lib used for scalling content to the full size of the browser.',' This lib contains three classes use for scaling images and video to fit the whole screen and resizing on the fly.

 Documents coming soon.

','svn','http://as3-fullscreen-lib.googlecode.com/svn/trunk',NULL,'GNU General Public License v3','http://code.google.com','http://code.google.com/p/as3-fullscreen-lib/',NULL,'AS3, Flash, Flex, FullScreen, Video, Image',NULL,'2010-06-17 23:18:29','2010-06-18 14:17:38');
INSERT INTO "libraries" VALUES(172,'Coordy','An Actionscript 3 Layout Toolkit','  ![](http://sweatshop.somerandomdude.com/projects/coordy/images/coordy_300w.png) 

  __Coordy is a light Actionscript 3 layout framework which offers a simple way to organize DisplayObjects into various different 2d and 3d layouts. The layouts are light, powerful and virtual organizers that simply manage x/y/z coordinates of DisplayObjects - meaning your objects are not tightly bound to any specific layout.__ 

### Update (December 1, 2009) [](#Update_(December_1,_2009)) 

 coordy 0.9.9 is officially released. All sorts of changes have been made which could potentially cause problems with any code using 0.9.1 or lower. I will be writing up some documentation on changes in the latest version, until then, you can check out all the fun new stuff [here](http://somerandomdude.com/projects/coordy/) .

### Update (November 15, 2009) [](#Update_(November_15,_2009)) 

 coordy just went through a __huge__ rewrite and is quite different in many ways. I have updated the source in SVN, but the ZIP download still offers up the 0.9.1 version. The examples and documentation have been updated in the SVN repo if you want to give it a try. I will be posting extensive notes on the changes and how to best use the library in the days to come.

### Update (August 20, 2009) [](#Update_(August_20,_2009)) 

 coordy 0.9.1 was just committed and available to use. Layouts in coordy 0.9.1 now have the ability to export their layout properties as either a JSON string or an XML object. Have a look at the [documentation](http://sweatshop.somerandomdude.com/projects/coordy/docs) for more details.

# Support This Project [](#Support_This_Project) 

 coordy is completely free to use and will always be that way. That said, this code takes time to write and test. Please [ __support this project__ ](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=8307931) by giving whatever you feel is appropriate - it will help ease the burden of continuing to push this project forward.

# Getting Started [](#Getting_Started) 

 Get to know this framework by checking out some [examples](http://sweatshop.somerandomdude.com/projects/coordy/examples.html) and the library&#x27;s [documentation](http://sweatshop.somerandomdude.com/projects/coordy/docs/) . The examples provided give a sense of the basic mechanisms and process for setting up layouts, updating layouts and managing multiple layouts. __Source code to the examples are also available on the examples page__ . I suggest checking out the [source via SVN](http://coordy.googlecode.com/svn/trunk/) as that will be updated much more frequently than the static zip.

# How Does It Work? [](#How_Does_It_Work?) 

 The basic explanation of how coordy works is once a DisplayObject is added to a layout, a node instance is created which points to the DisplayObject. The node is the link between the layout and DisplayObject. The node contains all the coordinate information for that DisplayObject, so that even if a DisplayObject is moved, the coordinate information for it persists due to its corresponding node. This is why the DisplayObject can belong to an infinite amount of layouts, because the layout merely handles its created node objects which, in turn, have a link to the DisplayObject.

 Layouts are merely abstract organizers, they do not need to be added/removed from the stage. Nonetheless, they have tweenable properties such as x, y, z, width, height, depth etc. When a display property such as width is altered, the layout adjusts all the cells and the nodes’s links to fit in the layout’s new dimension. This allows you to “tween” a layout even though it does not truly exist on the stage.

 Layouts will also adapt when nodes/DislpayObjects are removed from the layout. This allows simple motion-based layout management capabilities.

# What Type of Layouts Does coordy Have? [](#What_Type_of_Layouts_Does_coordy_Have?) 

### Here&#x27;s the full list, there should be more to come in the near future. [](#Here&#x27;s_the_full_list,_there_should_be_more_to_come_in_the_n) 

  __2d Layouts__ 

1. Ellipse - Distributes nodes in a simple ellipse
1. Flow - Attempts to fit all nodes within the bounds of the layout&#x27;s target
1. Grid - Distributes nodes in a basic 2d grid
1. HorizontalLine - Distributes nodes in a horizontal line
1. Lattice - Similar to a grid, but more flexible and feature-rich
1. Scatter - Distributes nodes randomly
1. Snapshot - Records the x,y coordinates of all nodes
1. Stack - Distributes nodes in an ordered stack
1. VerticalLine - Distributes nodes in a vertical line
1. Wave - Distributes nodes in a wave (i.e. sine, cosine, etc.)

  __3d Layouts__ 

1. Ellipse3d - Distributes nodes in a 3d ellipse (good for carousels)
1. Grid3d - Distributes nodes in a 3d grid
1. Scatter3d - Distributes nodes randomly in all three axes
1. Snapshot3d - Records the x,y,z coordinates of all nodes
1. Spheroid3d - Distributes nodes in a spheroid
1. Stack3d - Distributes nodes in an ordered 3d stack
1. Wave3d - Distributes nodes in a 3d wave (i.e. sine, cosine, etc.)
1. WaveEllipse3d - Still in testing, does funky stuff

# Want To Contribute? [](#Want_To_Contribute?) 

 This project could use some fresh eyeballs and brain matter. [Drop me a line](http://somerandomdude.com/hi/) if you would like to contribute to future versions of this library.

','svn','http://coordy.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/coordy/',NULL,'Actionscript, Layout, AS3, LayoutFramework',NULL,'2010-06-17 23:18:29','2010-06-19 00:25:37');
INSERT INTO "libraries" VALUES(173,'Vectorvision','Vectors in papervision3D',' Vectors in papervision3D, vector fonts in papervision.

  [ ![](http://barcinskijeanjean.files.wordpress.com/2008/05/vectorvision.jpg?w=450&amp;h=104) ](http://www.barcinski-jeanjean.com/entries/vectorvision/Example.html) 

 Examples:

*  [letters](http://www.barcinski-jeanjean.com/entries/vectorvision/Example.html) 
*  [simple drawing, animation](http://www.barcinski-jeanjean.com/entries/vectorvision/GraphicsExample.html) 
*  [svg](http://www.barcinski-jeanjean.com/entries/vectorvision/SvgExample.html) 
*  [vectorvision + effects](http://www.barcinski-jeanjean.com/entries/vectorvision/EffectsExample.html) 

 Vectorvision in use:

*  [http://www.lamberta.org/](http://www.lamberta.org/) 
*  [http://liveaxle.com/cloud/](http://liveaxle.com/cloud/) 
*  [http://www.trayler.co.uk](http://www.trayler.co.uk) 
*  [http://www.barcinski-jeanjean.com](http://www.barcinski-jeanjean.com) 

 Contact: mark@barcinski-jeanjean.com

 Special thanx to [powerflasher](http://fdt.powerflasher.com/) for the open source FDT license.

','svn','http://vectorvision.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/vectorvision/',NULL,'as3, papervision, flash, vectors, vectorfont',NULL,'2010-06-17 23:18:29','2010-06-19 00:26:01');
INSERT INTO "libraries" VALUES(174,'Wiiflash','Communication between the Wiimote and Flash',' WiiFlash has been developped by [Joa Ebert](http://blog.je2050.de/) and [Thibault Imbert](http://www.bytearray.org/) .

 It is a project dedicated to the Wiimote and Flash® applications consisting of two main parts:

* WiiFlash Server
* WiiFlash ActionScript API

## Downloading [](#Downloading) 

 We suggest you to use an SVN client like [tortoiseSVN](http://tortoisesvn.tigris.org/) or [subclipse](http://subclipse.tigris.org/) (with FlexBuilder 2) to download the WiiFlash source code instad of using the featured wiiflash_api.zip. This way you stay always up-to-date. Since people have often problems with downloading from a repository we put the file up there for users that do not want to deal with SVN. If you like to use SVN and the help on Google Code is not enough for you there is also an [article](http://wiki.papervision3d.org/index.php?title=Download_from_SVN) in the [Papervision3D wiki](http://wiki.papervision3d.org/) about this issue.

## API [](#API) 

 WiiFlash is very easy to use. You can connect a Wiimote in Flash with three lines of code and start reading your data.

    var wiimote: Wiimote = new Wiimote();
    wiimote.addEventListener( Event.CONNECT, onWiimoteConnect );
    wiimote.connect();
 We also support the new DOM event model of Flash. For people that are bored of all the listeners we have simple boolean flags too.

### Using the DOM event model [](#Using_the_DOM_event_model) 

    [...]
    
    wiimote.addEventListener( ButtonEvent.A_PRESS, onAPress );
    wiimote.addEventListener( ButtonEvent.A_RELEASE, onARelease );
    
    [...]
    
    private function onAPress( event: ButtonEvent ): void
    {
    	wiimote.rumble = true;
    }
    	
    private function onARelease( event: ButtonEvent ): void
    {
    	wiimote.rumble = false;
    }
### Using simple flags [](#Using_simple_flags) 

    private function onEnterFrame( event: Event ): void
    {
    	//Rumble while A and B are pressed
    	wiimote.rumble = wiimote.a&&wiimote.b;
    }
','svn','http://wiiflash.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/wiiflash/',NULL,'as3, flash, wiimote',NULL,'2010-06-17 23:18:29','2010-06-19 00:54:23');
INSERT INTO "libraries" VALUES(175,'Twitterscript','Twitter API in ActionScript',' This is an ActionScript 3.0 library for accessing Twitter&#x27;s APIs. This was originally code from Twitter, but it is being open sourced so it can be maintained and kept current.

','svn','http://twitterscript.googlecode.com/svn/trunk',NULL,'Apache License 2.0','http://code.google.com','http://code.google.com/p/twitterscript/',NULL,'twitter, actionscript, flash, flex',NULL,'2010-06-17 23:18:29','2010-06-18 14:18:17');
INSERT INTO "libraries" VALUES(178,'Tweetr','AS3 Twitter API','### Tweetr has moved to a new Home [](#Tweetr_has_moved_to_a_new_Home) 

 Tweetr has permanently moved to it&#x27;s new home at [http://tweetr.swfjunkie.com](http://tweetr.swfjunkie.com) 

 Come visit us!

','svn','http://tweetr.googlecode.com/svn/trunk',NULL,'GNU Lesser General Public License','http://code.google.com','http://code.google.com/p/tweetr/',NULL,'twitter, actionscript, as3, api, flash, flex, library, php, proxy',NULL,'2010-06-17 23:18:30','2010-06-18 14:18:17');
INSERT INTO "libraries" VALUES(179,'AS3scribdlib','ActionScript 3.0 API for Scribd',' The Scribd library is an ActionScript 3.0 API for the online document sharing application, Scribd. It provides access to the entire Scribd API.

','svn','http://as3scribdlib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3scribdlib/',NULL,'actionscript, as3, library, api, adobe, scribd',NULL,'2010-06-17 23:18:30','2010-06-18 14:17:46');
INSERT INTO "libraries" VALUES(180,'Xpath-as3','An XPath implementation for ActionScript 3.0',' An XPath implementation for ActionScript 3.0.

 The project is administered by Peter Hall, of [Memorphic](http://www.memorphic.com) , but other contributions are welcome. Please post to the discussion group if you would like to be added to the project.

## Platforms [](#Platforms) 

 XPath-AS3 can be used in any AS3 project, including:

* Flash CS3, CS4, CS5
* Flex 2.x, 3.x, 4.0

','svn','http://xpath-as3.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/xpath-as3/',NULL,'actionscript, as3, xpath, flash, flex, xml, memorphic, parser, tokenizer',NULL,'2010-06-17 23:18:30','2010-06-19 00:26:03');
INSERT INTO "libraries" VALUES(181,'Swx-format','SWX: The Native Data Format for Adobe Flash',' SWX is the native data format for Flash. Data is stored as SWF bytecode (you can&#x27;t get more native than that on the Flash Platform) that is interpreted by the Flash Player. The SWX format is a subset of the SWF format (just like JSON is a subset of JavaScript).

 With ActionScript 3 support, SWX provides you with custom events which are dispatched when your data is received, and it is available for use immediately. Using ActionScript 2, you can loadMovie() SWX data files and they are ready to use the moment they are loaded. When using either language you don&#x27;t need to deserialize or massage the data in any way before using it as it is stored in native Flash objects.

 For questions, please see the project wiki, submit an issue, or join the discussion and support list at [http://groups.google.com/group/swx-format](http://groups.google.com/group/swx-format) .

','svn','http://swx-format.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/swx-format/',NULL,'flash, swf, amfphp, swx, as2, as3, actionscript2, php, actionscript3, actionscript, codeignitor',NULL,'2010-06-17 23:18:30','2010-06-18 14:18:09');
INSERT INTO "libraries" VALUES(182,'Openplatform-flash','AS3 client library for The Guardian Open Platform',' A client library to help Flash and Flex developers use The Guardian Open Platform.

 The SVN repository contains two projects (both set up for Eclipse + Ant + FDT):

1.  *openplatform* - contains the library source code, a SWC build, ASDoc and an example FLA
1.  *openplatform-tests* - contains a FlexUnit test suite for the library code

## Flash developers [](#Flash_developers) 

 If you use the CS3 / CS4 IDE, have a look at the FLA in *openplatform/example* 

 If you use FDT or FlashDevelop, simply adjust your source path to include a copy of the SWC in *openplatform/build* 

## Flex developers [](#Flex_developers) 

 Add a copy of the SWC in *openplatform/build* to your libraries folder.

## Documentation [](#Documentation) 

 Full ASDoc is available here *openplatform/docs/index.html* 

## Dependencies [](#Dependencies) 

* Adobe&#x27;s Corelib
* Adobe&#x27;s FlexUnit

## Example Usage [](#Example_Usage) 

 Fetch the first 5 articles written after the 1st Jan 2009 including the word"Obama":

    function runSearch() : void
    {
    	var after : Date = new Date(2009,0, 1);
    	var query : SearchQuery = new SearchQuery(1, 5, ContentType.ARTICLE,"Obama", after);
    	var searchService : SearchService = new SearchService(YOUR_API_KEY);
    	 
    	searchService.addEventListener(ApiDataEvent.SEARCH_RESULTS_RECEIVED, handleSearchResults);
    	searchService.addEventListener(ApiErrorEvent.SEARCH_ERROR, handleError);
    	
    	searchService.findContent(query);
    }
    
    function handleSearchResults(event : ApiDataEvent) : void
    {
    	var results : SearchResults = event.data as SearchResults;
    	var firstItem : Item = results.getItems().getAll()[0] as Item; 
    	
    	trace("received"+ results.getCount() +"results:");
    	
    	for each (var item : Item in results.getItems().getAll()) 
    	{
    		trace(item.getType().getName() +"-"+ item.getHeadline());
    	}
    }
    
    function handleError(event : ApiErrorEvent) : void
    {
    	trace(event.text);
    }
 To get a list of the first 10 tags featuring the keyword"politics":

    function fetchTags() : void
    {
       	var tagService : TagService = new TagService(YOUR_API_KEY);
    	
    	tagService.addEventListener(ApiDataEvent.TAG_LIST_RECEIVED, handleTagData);
    	tagService.addEventListener(ApiErrorEvent.TAG_ERROR, handleError);
    
    	tagService.findTags("politics", 0, 10); 
    }   
    
    function handleTagData(event : ApiDataEvent) : void
    {
    	var data : TagData = event.data as TagData;
    	var tags : TagList = data.getItems();
    	
    	trace("received"+ tags.getCount() +"tags:");
    	 
    	for each (var tag : Tag in tags.getAll()) 
    	{
    		trace(tag.getType().getName() +"-"+ tag.getName());
    	}
    }
    
    function handleError(event : ApiErrorEvent) : void
    {
    	trace(event.text);
    }
 To retrieve an item of content with a specific ID:

    function fetchItem(id : String) : void
    {
    	var contentService:ContentService = new ContentService(YOUR_API_KEY);
    	
    	contentService.addEventListener(ApiDataEvent.CONTENT_ITEM_RECEIVED, handleContentItem);
    	contentService.addEventListener(ApiErrorEvent.CONTENT_ERROR, handleError);
    	
    	contentService.fetchItem(id);        	
    }
    
    function handleContentItem(event : ApiDataEvent) : void
    {
    	var result : Item = event.data as Item; 
    	
    	trace("received item #"+ result.getHeadline() +"-"+ result.getByline());
    }
    
    function handleError(event : ApiErrorEvent) : void
    {
    	trace(event.text);
    }
','svn','http://openplatform-flash.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/openplatform-flash/',NULL,'openplatform, flash, flex, as3, api, client, journalism, news',NULL,'2010-06-17 23:18:30','2010-06-19 00:54:12');
INSERT INTO "libraries" VALUES(183,'Colormunch','Actionscript (AS3) library for the Adobe Kuler API','  ![](http://farm4.static.flickr.com/3532/3797501005_f21396ea73.jpg) 

  ![](http://beekay.biz/colormunch/ku_50pxWtext.png) 

 The ColorMunch library is a small set of classes that makes retrieving themes, colors and comments from the Adobe Kuler API easy.

 Check out the Wiki to get started __Note:__ You&#x27;ll need a Kuler API key to use ColorMunch.

 If you don&#x27;t have an API key sign in to Adobe with your AdobeID and apply for a Kuler API key at [http://kuler.adobe.com/api](http://kuler.adobe.com/api) 

 Enjoy and please leave any comments or suggestions. I&#x27;ll keep working on it so check back regularly. You can [follow me on Twitter](http://twitter.com/BK4D) or [subscribe to my blog](http://beekay.biz) .

  ____  __NOTE__  ____  __If you downloaded the source prior to November 29, 2009 please download the updated source which fixes a problem with the searchThemes method.__ 

','svn','http://colormunch.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/colormunch/',NULL,'actionscript, as3, kuler, adobe, flash, color, colour, themes, palette',NULL,'2010-06-17 23:18:30','2010-06-18 14:17:50');
INSERT INTO "libraries" VALUES(184,'Gaforflash','Google Analytics Tracking For Adobe Flash','## Overview [](#Overview) 

 This is an ActionScript 3 API for Google Analytics data collection.

## Getting started [](#Getting_started) 

* To start using the code, read the [implementation overview](http://code.google.com/apis/analytics/docs/flashTrackingIntro.html) 
* Follow Matthew McNeely&#x27;s [code examples and report screen shots](http://www.insideria.com/2009/02/using-google-analytics-within.html) 

## Discussion [](#Discussion) 

* For any code/bug discussion, subscribe to our [developer group](http://groups.google.com/group/ga-for-flash) 

## Data Limitations [](#Data_Limitations) 

 Google Analytics is a free service in which Google covers all the bandwidth and processing costs. If your tracking implementation generates more than 5 Million requests (events/pageviews) per day, please seek approval first at: * __ga-events-feedback AT google DOT com__ * 

## Contributors [](#Contributors) 

 Google Analytics Tracking For Adobe Flash is an open source project under the Apache 2.0 license. If you are interested in understanding the internals of the tracking code, building from source, or contributing to the project, check out the [contributors page](http://code.google.com/p/gaforflash/wiki/Contributors) and subscribe to the project group

## Google Analytics Reference Docs [](#Google_Analytics_Reference_Docs) 

*  [GA.js reference guide](http://code.google.com/apis/analytics/docs/gaJSApi.html) 
*  [GA.js validation and troubleshooting](http://code.google.com/apis/analytics/docs/gaTrackingTroubleshooting.html) 

 .gadget-title { margin-bottom: 2px; }function resizeIframeHandler(opt_height) { var elem = document.getElementById(this.f); if (!elem) return; if (!opt_height) { elem.style.height = undefined; } else { opt_height = Math.max(10, opt_height); elem.style.height = opt_height + ''px''; } } gadgets.rpc.register("resize_iframe", resizeIframeHandler); gadgets.rpc.register(''set_title'', function(title) { var elem = document.getElementById(this.f + ''_title''); if (elem) { elem.innerHTML = gadgets.util.escape(title); } });## 

## 

## 

','svn','http://gaforflash.googlecode.com/svn/trunk',NULL,'Apache License 2.0','http://code.google.com','http://code.google.com/p/gaforflash/',NULL,'Google, Analytics, ActionScript',NULL,'2010-06-17 23:18:30','2010-06-19 00:25:45');
INSERT INTO "libraries" VALUES(185,'Minimalcomps','Minimal ActionScript 3.0 code only UI components',' MinimalComps are a set of minimal user interface components for use in ActionScript 3.0 based projects. See [http://www.minimalcomps.com](http://www.minimalcomps.com) 

','svn','http://minimalcomps.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/minimalcomps/',NULL,'ActionScript, Flash, Adobe, Components, UserInterface, Minimal',NULL,'2010-06-17 23:18:30','2010-06-18 14:18:02');
INSERT INTO "libraries" VALUES(186,'Polygonal','HaXe/AS3 library for game developers',' Combines [physics](/p/polygonal/wiki/Motor) , computational geometry and [data structures](/p/polygonal/wiki/DataStructures) into a single library that is aimed at the flash game developer who is targeting the latest flash player. Written in the [HaXe](http://haxe.org/doc/intro) language, the source is carefully optimized to ensure good performance of the AVM2.

  *The ActionScript 3.0 versions of __as3ds__ and __motor2__ are no longer being actively developed or supported* . The source files can be downloaded [here](http://code.google.com/p/polygonal/downloads/list?can=4&amp;q=&amp;colspec=Filename+Summary+Uploaded+Size+DownloadCount) . Even though the new library is written in [HaXe](http://haxe.org/doc/intro) , using AS3 is still possible by linking the SWC libraries.

 This library is also available on [lib.haxe.org](http://lib.haxe.org/p/polygonal) .

 Make a [donation](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=53GPA26W6TD6W) to honor the work and support future development.

','svn','http://polygonal.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/polygonal/',NULL,'haxe, as3, physics, datastructures, gamedev',NULL,'2010-06-17 23:18:30','2010-06-18 14:18:07');
INSERT INTO "libraries" VALUES(187,'AS3-rpclib','Actionscript 3 RPC libraries for flash-remoting(amf0), xml-rpc, json-rpc',' Actionscript 3 RPC Library

# Introduction [](#Introduction) 

 As3 RPC lib is a set of libraries that can be used with Flex 2 or AS 3 to invoke remote procedure calls using:

* AMF0 (Flash Remoting MX)
* XML-RPC
* JSON-RPC (Coming Soon)

 Usage mimics the RemoteObject which is available natively in [Flex 2](http://livedocs.macromedia.com/flex/2/langref/) in an effort to make usage in existing frameworks (e.g. Cairngorm) and design pattern (e.g. Token pattern) easy as possible.

# Updates 4/16/2008 [](#Updates_4/16/2008) 

* Fixed date format
* Change content-type header to text/xml
* Fixed binary data decoding
* Added encoding of generic objects
* Added ability to overwrite serializer

# Updates 4/14/2007 [](#Updates_4/14/2007) 

* Fixed show busy cursor
* Fixed untyped object returning null issue

# Updates 2/25/2007 [](#Updates_2/25/2007) 

* Added preliminary JSON support
* Added manifest to swc to allow for easier namespace declaration e.g.xmlns:ak33m=&#x27;http://ak33m.com/mxml&#x27;
* Fixed XMLRPC missing double deserialazation

','svn','http://as3-rpclib.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/as3-rpclib/',NULL,'flex, as3, xml-rpc, json-rpc, remoting, flash',NULL,'2010-06-17 23:18:31','2010-06-19 00:25:17');
INSERT INTO "libraries" VALUES(188,'Governor','Governor is a multithreading script engine written in AS3, running on the flash platform.',' Governor is a script engine written in AS3. It provides all functions and operators you know from AS3; operators, math functions, math constants. Additionally it provides multithreading functionality for parallel execution of code. !The flash player is design as a single thread application, so governor is providing green threads!

  [http://en.wikipedia.org/wiki/Green_threads](http://en.wikipedia.org/wiki/Green_threads) 

 Governor started in 2006 as a AS2 project. At that time I worked on a game engine and I wanted a flexible system to interact with the game world. Without knowing anything about script engines, virtual machines and so on I started to read articles, web pages ...

 I wanted the design to meet the following conditions:

* It should be Independent from any other framework, so it can be used in AIR, Flash and Flex.
* To use governor it must not be necessary to inherit from it. So it can be integrated easily in any existing project.
* It should be easy to extend the core API when used in a project.

','svn','http://governor.googlecode.com/svn/trunk',NULL,'MIT License','http://code.google.com','http://code.google.com/p/governor/',NULL,'flash, flex, air, actionscript, scriptengine, multithreading',NULL,'2010-06-17 23:18:31','2010-06-19 00:25:46');
INSERT INTO "libraries" VALUES(189,'Mojocolors','An Actionscript 3 color library inspired by the great Nodebox Colors library','# mojocolors - color for your code [](#mojocolors_-_color_for_your_code) 

 Look at the tutorials:

*  [Working with color.](http://code.google.com/p/mojocolors/wiki/ColorTutorial) 
*  [Working with gradients.](http://code.google.com/p/mojocolors/wiki/GradientTutorial) 

 Mojocolors allows you to work with color in Actionscript in a very natural way, for example by using HSB (Hue, Saturation, Brightness) for color manipulation. You can work with one color (ch.badmojo.color.Color) or with a whole list of colors (ch.badmojo.color.ColorWheel). Color theory / harmony rules, different shades of the same color, sorting by brightness or hue or saturation, creation of gradients and much more are implemented, so you can focus on writing better apps.

## Color Harmony: [](#Color_Harmony:) 

 Apply the color theory you learned in school and create nicer colors without switching between Adobe Photoshop, Illustrator or Kuler to get the Hex values of your colors.

  ![](http://mojocolors.googlecode.com/svn/wiki/colorHarmony.jpg) 

## Color Shades: [](#Color_Shades:) 

 An easy way to create colors of the same hue without coding too much. just writevar wheel : ColorWheel = new Color(230,0,60).toWarm(30);to get some warm color variations of your color.

  ![](http://mojocolors.googlecode.com/svn/wiki/colorShades.jpg) 

## Color Wheel: [](#Color_Wheel:) 

 The ColorWheel object allows you to use most methods that already present in the Color class on multiple colors at the same time. Calldarken(20)to reduce the brightness of all colors in the wheel. It&#x27;s easy to create gradients and sort the color wheel by brightness or other attributes.

  ![](http://mojocolors.googlecode.com/svn/wiki/colorWheel.jpg) 

## More Info: [](#More_Info:) 

 Download now and see the examples under /demos/ch/badmojo/color/ ____ 

 Works in Flash Player 9&10!

 This library is inspired and heavily influenced by the awesome Colors library of NodeBox. See [http://nodebox.net/code/index.php/Colors](http://nodebox.net/code/index.php/Colors) for more details.

 Questions? Send a mail to colors@badmojo.ch.

 have fun! phil.

','svn','http://mojocolors.googlecode.com/svn/trunk',NULL,'GNU General Public License v2','http://code.google.com','http://code.google.com/p/mojocolors/',NULL,'Color, Actionscript, Nodebox, ColorHarmony, FlashPlayer, Flash',NULL,'2010-06-17 23:18:31','2010-06-19 00:25:50');
INSERT INTO "libraries" VALUES(190,'Flashdraw3d','A very lightweight 3d drawing API for Flash',' This library is designed to implement the same features as the 2D drawing API. Except in 3D.

 So usage would be :

 var g3d = new Graphics3D(this);

 g3d.lineStyle(1,0xff0000,1); g3d.moveTo(0,0,0); g3d.lineTo(100,0,0);

 etc...

','svn','http://flashdraw3d.googlecode.com/svn/trunk',NULL,'New BSD License','http://code.google.com','http://code.google.com/p/flashdraw3d/',NULL,'flash, actionscript, 3D',NULL,'2010-06-17 23:18:31','2010-06-18 14:17:55');
INSERT INTO "libraries" VALUES(191,'Flvslicer','A simple FLV slicer and merger',' Allows you to slice an FLV at runtime in AS3. Slices can also be merged into a single FLV file.

 FLVSlicer can also extract sound or video only from an FLV.

 AS3 Code Sample :

    //create the FLVSlice object
    var slicer:FLVSlicer = new FLVSlicer(new flvBytes());
    
    // listen for the SlicedEvent.COMPLETE event
    slicer.addEventListener( SlicedEvent.COMPLETE, onSliced );
    
    // extract the slice with the specific timing (in ms) and save it
    var firstSlice:FLVSlice = slicer.slice(1000, 3000);
    
    // extract another slice with the specific timing (in ms) and save it
    var secondSlice:FLVSlice = slicer.slice(7200, 8900);
    
    // create a FLVSlice vector
    var slices:Vector.<FLVSlice>= new Vector.<FLVSlice>();
    
    // store the slices
    slices.push ( firstSlice );
    slices.push ( secondSlice );
    
    // merge them as a single FLV stream
    var merged:FLVSlice = slicer.merge( slices );
','svn','http://flvslicer.googlecode.com/svn/FLVSlicer',NULL,'MIT License','http://code.google.com','http://code.google.com/p/flvslicer/',NULL,'',NULL,'2010-06-17 23:18:31','2010-06-19 00:54:02');
INSERT INTO "libraries" VALUES(192,'ASblender','ASBlender is an Actionscript 3 library to read Blender .blend files.','Welcome to the asblender wiki!

ASBlender is an Actionscript 3 library to read [Blender](http://www.blender.org/) .blend files.

See [blender-file-format](http://www.blender.org/development/architecture/blender-file-format/) for an explanation of the .blend format.

The .blend format contains all C-structures used, which are defined in the so called DNA. This way .blend files are fully backward compatible.
[Check out the DNA of a Blender 2.48 .blend](http://www.atmind.nl/blender/blender-sdna.html).

ASBlender simply maps these structures to AS3 Object''s. This means there are no "blender" classes like "BlenderScene" in this library. Everything is an `Object`, `Array`, `Number`, `int` or `String`.

This means that using this library requires some basic knowledge on the inner workings of [Blender](http://www.blender.org/). So the learning curve can be rather steep. Its up to you to do something with the data. ASBlender simply provides you the .blend data.

But if your goal is to import simple .blend''s containing a single mesh, the examples below should get you going pretty fast.

See:

* [Main.as](http://github.com/timknip/asblender/blob/master/src/Main.as) for a simple implementation.
* [PapervisionTest.as](http://github.com/timknip/asblender/blob/papervision3d/src/PapervisionTest.as) for a simple Papervision implementation. See the [compiled swf here](https://dl.dropbox.com/u/438592/blender/PapervisionTest.swf).

Hello World:

* First you need the create a `ByteArray` by loading a .blend file or by using `[Embed]`.
* Create a BlendFile object: `var blend:BlendFile = new BlendFile();`
* And read it: `blend.read( theByteArray );`

All scenes in the .blend are read by default, you can access the scenes contained in the .blend thru `var scenes:Array = blend.scenes`. 
Blender can contain more then one [Scene](http://www.atmind.nl/blender/blender-sdna.html#struct:Scene), but its likely there''s only one.

Of course you can access other structures like [IpoCurve](http://www.atmind.nl/blender/blender-sdna.html#struct:IpoCurve), [Panel](http://www.atmind.nl/blender/blender-sdna.html#struct:Panel), [Lamp](http://www.atmind.nl/blender/blender-sdna.html#struct:Lamp), etc. too. Use for example `var curves:Array = blend.readType(theByteArray, "IpoCurve");` to read all curves.

Note that I''m still learning how all these structures stick together. More example code will follow as my knowledge increases.

# USAGE

    [Embed (source="/assets/crystal_cube.blend", mimeType="application/octet-stream")]
    public var BlenderData:Class;
    
    var blend:BlendFile = new BlendFile();
    
    blend.read(new BlenderData());
    
    if (blend.scenes.length) {
        // Blender can have multiple scenes, don''t know yet how to grab the "active" scene.
      buildScene(blend.scenes[0]);
    }
    
    /**
     * Prints out the DNA as contained in the .blend
     */
    private function printDNA(blend:BlendFile):void {
      var struct:DNAStruct;
      var field:DNAField;
    
      for each (struct in blend.dna.structs) {
        var type:String = blend.dna.types[ struct.type ];
    
        trace(type);
    
        for each (field in struct.fields) {
          trace(field.type + " " + field.name);
        }
      }
    }
    
    private function buildScene(scene:Object):void {
    
      var obj:Object = scene.base.first;
    
      while (obj) {
        // grab the Blender Object.
        // The Blender Object defines rotation, scale, translation etc.
        var object:Object = obj.object;
    
        trace("Object name: " + object.id.name + " type: " + object.type + " matrix: " + object.obmat);
    
        //for (var key:String in object) {
        //  trace(key);
        //}
    
        if (object.data) {
          switch (object.type) {
            case 1:  // Mesh
              trace (" -> Mesh: " + object.data.id.name);
              buildMesh(object.data);
              break;
            case 10: // Lamp
              trace (" -> Lamp: " + object.data.id.name);
              break;
            case 11: // Camera
              trace (" -> Camera: " + object.data.id.name);
              break;
            default:
              break;
          }
        }
    
        obj = obj.next;
      }
    }
    
    private function buildMesh(mesh:Object):void {
      var numVertices:int = mesh.totvert;
      var numFaces:int = mesh.totface;
      var i:int;
    
      trace(" -> #verts : " + numVertices);
    
      for (i = 0; i < numVertices; i++) {
        var v:Object = mesh.mvert[i];
    
        var x:Number = v.co[0];
        var y:Number = v.co[1];
        var z:Number = v.co[2];
    
        trace(" -> -> vertex: " + x + " " + y + " " + z);
      }
    
      trace(" -> #faces : " + numFaces);
    
      for (i = 0; i < numFaces; i++) {
        var f:Object = mesh.mface[i];
    
        var v1:int = f.v1;
        var v2:int = f.v2;
        var v3:int = f.v3;
        var v4:int = f.v4;
    
        trace(" -> -> indices: " + v1 + " " + v2 + " " + v3 + " " + v4);
    
        if (mesh.mtface) {
          // UV coords are defined
          var tf:Object = mesh.mtface[i];
    
          trace(" -> -> -> uv: " + tf.uv);
        }
      }
    }','git','git://github.com/timknip/asblender.git','src/','not known','http://github.com','http://github.com/timknip/asblender','http://wiki.github.com/timknip/asblender/','blender, 3d, utilities, interop, import, filetype, blend','','2010-06-19 04:17:50','2010-06-19 04:36:05');
INSERT INTO "libraries" VALUES(193,'OAuth','AS3/Flex OAuth Library','For an example please visit: http://soenkerohde.com/2009/07/high-level-as3flex-library-for-oauth-with-twitter-from-air/','git','git://github.com/srohde/OAuth.git','build/src/','Apache License, Version 2.0','http://github.com','http://github.com/srohde/OAuth/','http://soenkerohde.com/2009/07/high-level-as3flex-library-for-oauth-with-twitter-from-air/','auth, oauth, authentication, security, ','','2010-06-19 04:55:33','2010-06-19 04:55:33');
INSERT INTO "libraries" VALUES(194,'GpxAS3','GPX Library for ActionScript 3','This project takes GPX files and parses them into ActionScript objects.

Created by Ryan Stewart and Simeon Bateman.

Source is in the src directory and an example use case is in the examples directory.','git','git://github.com/ryanstewart/GpxAS3.git','src/','not known','http://github.com','http://github.com/ryanstewart/GpxAS3/','http://blog.digitalbackcountry.com/2010/02/example-added-for-gpxas3-the-flashflex-gpx-library/','mapping, geo, gpx, gps','','2010-06-19 05:05:26','2010-06-19 05:05:26');
INSERT INTO "libraries" VALUES(195,'AS3-signals','Signals is a new approach for AS3 events, inspired by C# events and signals/slots in Qt.','# Signals: Think Outside the Event.

Signals are light-weight, strongly-typed AS3 messaging tools.
Wire your application with better APIs and less boilerplate than AS3 Events.','git','git://github.com/robertpenner/as3-signals.git','src/','MIT License','http://github.com','http://github.com/robertpenner/as3-signals/','http://wiki.github.com/robertpenner/as3-signals/','AS3, events, Signals','','2010-06-19 05:10:39','2010-06-19 05:11:47');
INSERT INTO "libraries" VALUES(196,'AS3swf','Low level Actionscript 3 library to parse, create, modify and publish SWF files. ','For more info, please visit the [wiki](http://wiki.github.com/claus/as3swf/)','git','git://github.com/claus/as3swf.git','src/','MIT License','http://github.com','http://github.com/claus/as3swf/','http://wiki.github.com/claus/as3swf','swf','','2010-06-19 05:14:17','2010-06-19 05:14:41');
INSERT INTO "libraries" VALUES(197,'Away 3D','3D engine','Away3D is a realtime 3D engine for flash in actionscript 3, originally derived from Papervision3D. Away3D engine is designed to be fast and extensible.

Fp9 and Fp10 versions are available from svn trunk
','svn','http://away3d.googlecode.com/svn/trunk/','fp10/Away3D/src/','Apache License, Version 2.0','http://code.google.com','http://www.away3d.com/','','3d, graphics','','2010-06-19 05:52:17','2010-06-20 09:54:34');
INSERT INTO "libraries" VALUES(198,'Sandy 3D','3d engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.flashsandy.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(200,'FIVe3D','3D Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://five3d.mathieu-badimon.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(201,'WireEngine3D','A lightweight and fast 3D Engine for Flash 8/9.',NULL,NULL,NULL,NULL,NULL,NULL,'http://osflash.org/we3d/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(202,'Sharikura','3d engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://temp.roxik.com/datas/physics/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(203,'Infinity3d','3d engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.infinity3d-engine.com',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(204,'PaperWorld 3D','3D Game Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://paperworld3d.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(205,'Yogurt3D','3D Game Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.yogurt3d.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(207,'flixel','A collection of Actionscript 3 files that helps organize, automate, and optimize Flash games.',NULL,NULL,NULL,NULL,NULL,NULL,'http://flixel.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(208,'PixelBlitz Engine','A game framework for Actionscript3',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.photonstorm.com/pixelblitz-engine',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(209,'PushButton Engine','An Open Source, Flash game engine and framework that''s designed for a new generation of games.',NULL,NULL,NULL,NULL,NULL,NULL,'http://pushbuttonengine.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(210,'FFilmation','AS3 Isometric Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.ffilmation.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(211,'isoengineas3','Flash Isometric Engine AS3',NULL,NULL,NULL,NULL,NULL,NULL,'http://sourceforge.net/projects/isoengineas3/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(212,'Cast3D','3D Animation Framework','Cast3D is 3D animation framework library for Adobe Flash in ActionScript3. The foundation is a multi key-framed geometrical animation. Cast3D supports geometry and texture morphing, skin animation, 3D sound, animated movie and video. A number of animation interpolation splines is implemented to provide smooth and natural motion, like Bezier, TCB, Hemite(cubic), Cosine and Linear.

Cast3D does not have it''s own rendering engine. So for 3D graphics rendering Cast3D currently is ported to popular 3D engines, Sandy3D and Papervision3D.

Cast3D has it own data file. It is an XML file, which contains information about 3D scene, abjects of a scene, materials, textures, lighting, sound, camera etc.. and motion. Those who are familiar with COLLADA format, may find some similarity of data types in both file formats, but Cast3D file is much thiner and contains only data it can process.

To make process of creation of 3D Flash animations with Cast3D easy, import C++ library was introduced. Which purpose is to generate Cast3D XML file from exposed functionality of library. There are also few import utilities built on top of Import library available now for download, like 3dsMax (.3ds) file import utility and geometry generation sample. COLLADA file import is coming soon.

No native rendering engine''s 3D data loaders are involved in loading process. Cast3D populates all the scene and motion data directly into the engine and controls transient or frame by frame rendering.','svn','http://cast3d.googlecode.com/svn/trunk/','cast3d/as3/src/','MIT License','http://code.google.com','http://www.cast3d.org/','http://code.google.com/p/cast3d/downloads/detail?name=docs_09b.zip','3d, animation','','2010-06-19 05:52:17','2010-06-20 10:28:41');
INSERT INTO "libraries" VALUES(213,'WOW-Engine','3D Physics Engines',NULL,NULL,NULL,NULL,NULL,NULL,'http://seraf.mediabox.fr/wow-engine/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(214,'jiglibflash','3D Physics Engines',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.jiglibflash.com/blog/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(216,'FLARManager','Augmented Reality',NULL,NULL,NULL,NULL,NULL,NULL,'http://words.transmote.com/wp/flarmanager/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(217,'ARtisan','Augmented Reality','ARtisan is the fastest and easiest way from point A to point B in browser based augmented reality. With ARtisan, the developer needs no knowledge of the inner workings of augmented reality to create in-depth, interactive AR experiences.

For more information visit http://onezerothrice.com','svn','http://artisanmanager.googlecode.com/svn/trunk','src/','GNU General Public License v3','http://code.google.com','http://code.google.com/p/artisanmanager/','','AugmentedReality, FLARToolkit, Papervision, Papervision3D, Manager, Marker','','2010-06-19 05:52:17','2010-06-19 06:12:32');
INSERT INTO "libraries" VALUES(218,'Desuade Motion Package','A breakthrough AS3 library that combines keyframe-sequencing, physics, and tweening.','Are you a traditional timeline and keyframe animator looking to dynamically create your animations by code? Maybe you looked at a few AS3 libraries and were overwhelmed by activating a bazillion plugins, or even worse – forced to use ones that were slow, heavy, and bloated with features you never use. Or maybe you already use an awesome ActionScript tweening engine, but are looking to create something more natural and sophisticated with software that''s made for and by professionals.
Introducing the Desuade Motion Package – an AS3 library that makes complex motion simple

Desuade is revolutionizing the way developers and designers code animations with the industry introduction of MotionControllers™ – the pragmatic approach to creating complex animations using virtual keyframes – just like Flash CS4''s Motion Editor.
The Desuade Motion Package is the first and only AS3 library for Flash that has been built with tweening, sequencing, and physics – all in one integrated package. Imagine being able to create any kind of motion that you''ll ever need, using a single syntax that fits seamlessly into your existing workflow.

The package consists of the following components:

* MotionControllers: design animations based on a sequence of virtual keyframes
* Sequences: easily create powerful sequences with any motion object
* Tweens: make efficient and powerful tweens that include bezier and color
* Physics: animate naturally using velocity, acceleration, and friction

To top it off, most of the package is directly configurable with XML - generate, save, share, and load complex animations through XML. Relax knowing your animations are future-proof, and even cross-compatible with other engines.

Are you beginning to get excited yet? Just visit the Download page and start using it today!

Feel free to learn more now about the package by visiting the Features page, or view the technical details and syntax on the Specs page.','git','git://github.com/andrewfitz/desuade.git','as3/','MIT License','http://github.com','http://desuade.com/dmp','http://api.desuade.com/en_as3/','tween, flash, particle, physics, actionscript, effects, motion, as3, partigen, emitter, particleeffects, particleengine','','2010-06-19 05:52:17','2010-06-20 10:39:10');
INSERT INTO "libraries" VALUES(219,'TweenLite','Animation Tweening Engines',NULL,NULL,NULL,NULL,NULL,NULL,'http://blog.greensock.com/tweenliteas3/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(220,'TweenMax','Animation Tweening Engines',NULL,NULL,NULL,NULL,NULL,NULL,'http://blog.greensock.com/tweenmaxas3/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(221,'Tweensy','Animation Tweening Engines',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.lostinactionscript.com/blog/index.php/2008/08/31/as3-tween-engine-tweensy-preview/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(222,'GoASAP','Animation Tweening Engines',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.goasap.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(223,'AS3 Animation System 2.1','Animation Tweening Engines','You are a developer. As a developer, you need a powerful animation tool that can provide you with both simplicity and complexity at the same time. You need a clearly defined API for auto-completion; one that is nicely documented to make your life easier. That is what the version 2.1 release is all about.

[Read more...](http://www.boostworthy.com/blog/?p=170)','zip','http://www.boostworthy.com/code_shared/boostworthy_animation_v2_1.zip','','','http://www.boostworthy.com/code_shared/','http://www.boostworthy.com/blog/?p=170','','animation, tweening','','2010-06-19 05:52:17','2010-06-19 06:22:01');
INSERT INTO "libraries" VALUES(224,'Animation Package','Animation Tweening Engines','Animation tweening library','zip','http://sourceforge.net/projects/animationpackag/files/animationpackag/AnimationPackage_v3_00_alpha1/AnimationPackage_v3_00_alpha1.zip/download','sources/','Mozilla Public License 1.1','http://sourceforge.net','http://www.alex-uhlmann.de/flash/animationpackage/','','animation, tweening','','2010-06-19 05:52:17','2010-06-19 22:07:51');
INSERT INTO "libraries" VALUES(225,'gTween','Animation Tweening Engines',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.gskinner.com/blog/archives/2008/08/gtween_a_new_tw.html',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(226,'HydroTweenHydroSequence','Animation Tweening Engines (based on GoASAP)',NULL,NULL,NULL,NULL,NULL,NULL,'http://blog.hydrotik.com/2008/07/19/hydrotween-hydrosequence-rev32/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(229,'grape-as3','Path-based ActionScript 3 Animation Tweening library',NULL,NULL,NULL,NULL,NULL,NULL,'http://blog.generalrelativity.org/actionscript-30/grape-animation-library/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(230,'RabbitTween','A new fast and easy Animation Tweening engine for Flash AS3',NULL,NULL,NULL,NULL,NULL,NULL,'http://blog.open-design.be/2009/09/26/rabbittween-new-fast-and-easy-transitiontween-engine-for-flash-as3/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(231,'APE (Actionscript Physics Engine)','2D Physics Engine','APE (Actionscript Physics Engine) is a free AS3 open source 2D physics engine for use in Flash and Flex, released under the MIT License. APE is written and maintained by Alec Cove.','svn','http://ape.googlecode.com/svn/trunk','source/','MIT License','http://code.google.com/p/ape','http://www.cove.org/ape/index.htm','','physics, 2D','','2010-06-19 05:52:17','2010-06-19 05:56:49');
INSERT INTO "libraries" VALUES(232,'Box2DFlashAS3','2D Physics Engine','Box2DFlash (aka Box2DAS3) is a port to AS3 of Box2D, an open source 2d physics engine by Erin Catto. It is mainly designed around rigid bodies and joints, but supports a host of other features, like raycasting, or continuous collision detection. You can use it to make games!

Currently we are nearing release 2.1, with an alpha release available, providing lots of API improvements and features, like the unlimited world size, one way collisions and a completely redone event system.
','svn','https://box2dflash.svn.sourceforge.net/svnroot/box2dflash','source/','zlib/libpng License','http://sourceforge.net','http://box2dflash.sourceforge.net/','http://www.box2dflash.org/docs/2.0.2/manual','physics, 2d, ragdoll','','2010-06-19 05:52:17','2010-06-20 09:59:38');
INSERT INTO "libraries" VALUES(233,'motor2','2D Physics Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://lab.polygonal.de/motor_physics/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(234,'Fisix Engine','2D Physics Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.fisixengine.com/default.asp',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(235,'PopShapes','2D Physics Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://lab.andre-michelle.com/physics-engine/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(236,'Collision Detection Kit','2D Physics Engine','The Collision Detection Kit is a package of classes created for pixel-precise, shape-based collision detection for all display objects. It is written in Actionscript 3.0 and meant for Flash Player version 9 and higher. The Collision Detection Kit comes with several features to control how collisions are detected, and provides data for the user of the class so they can do something about the collision:

Set an alpha threshold to ignore colors below the threshold.
Specify colors and color ranges to exclude from collision detection.
Receive an angle of collision for each collision. We''re not talking about bounding boxes here - the angle is calculated based on the shapes of the display objects at the site of the collision. Great for when you''re working with physics!
Receive the pixels that overlapped in a collision in stage coordinates. Combined with the returned angle, and your physics engine will have no problems traversing complicated shapes or performing off-axis rotation.
Takes transformations (scale, rotation, color transforms, etc.) of individual instances of your display objects into account.
Add items for collision detection regardless of their nesting.
You can have as many CollisionGroup and CollisionList instances as you want, allowing you to easily manage different interactions and behaviors.
Works with all display objects - MovieClips, Sprites, Bitmaps, TextFields, FLVs, and on and on!
To learn more about this package and how to use it, please reference the links for examples and documentation.

The CDK is released under the MIT license. Copyright 2008, Corey O''Neil www.coreyoneil.com','zip','http://collisiondetectionkit.googlecode.com/files/CollisionDetectionKit_v15.zip','/','MIT License','http://code.google.com','http://coreyoneil.com/portfolio/index.php?project=5','http://code.google.com/p/collisiondetectionkit/downloads/detail?name=CDK%20Documentation%20v15.zip&can=2&q=','physics, 2D','','2010-06-19 05:52:17','2010-06-20 10:32:26');
INSERT INTO "libraries" VALUES(237,'QuickBox2D','A mini-library created to work with Box2DFlashAS3 2D Physics Engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://actionsnippet.com/?page_id=1391',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(238,'AS3Crypto','Crypto library','As3 Crypto is a cryptography library written in Actionscript 3 that provides several common algorithms. This version also introduces a TLS engine (TLS is commonly known as SSL.)

* Protocols: TLS 1.0 support (partial)
* Certificates: X.509 Certificate parsing and validation, built-in Root CAs.
* Public Key Encryption: RSA (encrypt/decrypt, sign/verify)
* Secret Key Encryption: AES, DES, 3DES, BlowFish, XTEA, RC4
* Confidentiality Modes: ECB, CBC, CFB, CFB8, OFB, CTR
* Hashing Algorithms: MD2, MD5, SHA-1, SHA-224, SHA-256
* Paddings available: PKCS#5, PKCS#1 type 1 and 2
* Other Useful Stuff: HMAC, Random, TLS-PRF, some ASN-1/DER parsing

The library is offered under the BSD license, and include several derivative works from Java, C and javascript sources. Check the [LICENSE.txt](http://as3crypto.googlecode.com/svn/trunk/as3crypto/LICENSE.txt) file for a list of contributors.You can look at [a demo](http://crypto.hurlant.com/demo/) of the functionality of the library. It''s built with Flex 2. It includes a unit test tab, and a benchmark tab.This is what the benchmark tab outputs on my computer (Athlon64 2Ghz):

    The numbers are in 1000s of bytes per second processed.
    type              16 bytes     64 bytes    256 bytes   1024 bytes   8192 bytes
    md2                  1.01k        3.64k       15.08k       53.89k      171.76k
    md5                221.85k      447.32k      739.54k      893.72k      905.82k
    sha1                82.28k      184.78k      286.76k      336.03k      345.41k
    sha224              60.84k      125.67k      200.27k      234.28k      247.58k
    sha256              60.52k      126.30k      199.19k      234.04k      246.01k
    hmac-md5            48.37k      159.37k      282.87k      295.15k      341.21k
    hmac-sha1           18.29k       64.82k      165.72k      277.60k      342.52k
    hmac-sha224          5.75k       24.84k      125.71k      204.35k      256.36k
    hmac-sha256         15.10k       49.33k      123.71k      206.17k      249.08k
    rc4                117.24k      381.34k      878.93k     1315.01k     1539.44k
    xtea-cbc             2.49k        6.48k       12.80k       33.00k       44.48k
    aes128-cbc           1.61k        4.01k       22.97k       78.55k      205.01k
    aes192-cbc           1.34k        5.13k       20.91k       69.45k      172.43k
    aes256-cbc           1.48k        5.63k       18.87k       63.45k      150.39k
    blowfish-cbc         2.77k       10.81k       42.28k      140.27k      343.05k
    des-cbc              2.53k        9.73k       35.20k      124.84k      624.88k
    3des-cbc             2.50k        9.72k       35.61k      115.21k      253.42k

The library has not been optimized for speed, and those numbers could probably be improved.You can [browse the source](http://crypto.hurlant.com/demo/srcview/) , [download the source](http://as3crypto.googlecode.com/files/Crypto.zip) or [download the SWC binary](http://as3crypto.googlecode.com/files/as3crypto.swc) Check out the [release notes](http://as3crypto.googlecode.com/svn/trunk/as3crypto/RELEASENOTES.txt) for a bit more details.Things that should make it in the next release:

* better ASN-1 parsing
* SSL 3.0 support
* various bugfixes (Socket, BigInteger)

','svn','http://as3crypto.googlecode.com/trunk/','as3crypto/src/','New BSD License','http://code.google.com','http://code.google.com/p/as3crypto/','','cryptography, actionscript, flash, encryption, TLS, RSA, DES, AES, Blowfish, MD5, SHA, X509, RC4','','2010-06-19 05:52:17','2010-06-19 06:59:06');
INSERT INTO "libraries" VALUES(239,'FLiNT','Particle System',NULL,NULL,NULL,NULL,NULL,NULL,'http://flintparticles.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(240,'Pulse Particle System','A general purpose AS3 particle system.',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.rogue-development.com/pulseParticles.html',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(241,'Orion','An all around simple and flexible particle generator.',NULL,NULL,NULL,NULL,NULL,NULL,'http://blog.coursevector.com/orion',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(242,'Flare','Create interactive data visualizations for the web.',NULL,NULL,NULL,NULL,NULL,NULL,'http://flare.prefuse.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(243,'SomaLoader','A lightweight loading manager written in AS3',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.soundstep.com/blog/downloads/somaloader/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(244,'Cairngorm 3','Collection of OOP Libraries','Cairngorm 3 provides a set of optional Flex libraries released under the Cairngorm License. 

These are designed to support the Cairngorm 3 architecture by providing utilities for i.e. navigation, Object Relational Mapping, validation, module loading, reduction of view behaviour, task processing and popup management.

The Cairngorm 3 Architecture described in Cairngorm Guidelines can also be applied with other third-party libraries and frameworks. Several of the Cairngorm 3 libraries are implemented as extensions to third-party frameworks. Currently, all extentions support the Parsley Application Framework and the Navigation library additionally offers an extention to the Swiz framework.

However, other Cairngorm libraries, such as Observer, Popup, Task, Persistence, Design by Contract and Validation are independent of any third-party framework.','svn','http://opensource.adobe.com/svn/opensource/cairngorm3/','','Open Source - Adobe License','http://opensource.adobe.com','http://opensource.adobe.com/wiki/display/cairngorm/Cairngorm+Libraries#CairngormLibraries-Libraries','http://opensource.adobe.com/wiki/display/cairngorm/Developer+Documentation','command pattern, framework','','2010-06-19 05:52:17','2010-06-20 09:22:06');
INSERT INTO "libraries" VALUES(245,'PureMVC','OOP Framework',NULL,NULL,NULL,NULL,NULL,NULL,'http://puremvc.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(246,'Mate','OOP Framework',NULL,NULL,NULL,NULL,NULL,NULL,'http://mate.asfusion.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(247,'HydraMVC','A rewrite of the PureMVC API exclusively for Flex',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.hydramvc.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(248,'RobotLegs','An Architectural (or Structural) Action Script 3 Framework',NULL,NULL,NULL,NULL,NULL,NULL,'http://shaun.boyblack.co.za/blog/category/robotlegs/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(249,'Gaia','An open-source front-end Flash Framework for AS3 and AS2 designed to dramatically reduce development time',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.gaiaflashframework.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(250,'LayerGlue','A framework aimed at rapid website development for Flash & Flex.',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.layerglue.com',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(251,'Guasax','an ease of use programming framework to provide ordered and scalable Flex applications',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.guasax.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(253,'CASA Lib','An Open Source Code Library for ActionScript 2.0 & 3.0','CASA Lib is a flexible ActionScript library designed to streamline common chores and act as a solid, reliable foundation for your projects. It provides a core set of classes, interfaces, and utilities to get you coding faster and more reliably without getting in the way.

Standardizes the loading of external files with an easy-to-use and consistent API.

Complete and meticulous documentation with examples for every class and utility.

Memory management made so much easier through a common destroy(); method.
','svn','http://svn.as3.casalib.org/releases/latest/','code/','New BSD License','http://casalib.org','http://casalib.org/','http://as3.casalib.org/docs/','framework','','2010-06-19 05:52:17','2010-06-20 10:19:28');
INSERT INTO "libraries" VALUES(254,'FlashMVC','A flexable lightweight framework engine for AS3.',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.flashmvc.com/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(255,'Soma and SomaUI','An AS3 MVC framework and software to generate an AS3 flash site based on it.',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.soundstep.com/blog/downloads/somaui/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(256,'Spring Actionscript','An offshoot of the Java-based Spring Framework.',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.springactionscript.org/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(257,'SmartyPants IOC','Dependency Injection for Adobe Flex and Flash',NULL,NULL,NULL,NULL,NULL,NULL,'http://smartypants.expantra.net/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(258,'Yahoo Maps API','Yahoo Maps API',NULL,NULL,NULL,NULL,NULL,NULL,'http://developer.yahoo.com/flash/maps/',NULL,NULL,NULL,'2010-06-19 05:52:17','2010-06-19 05:52:17');
INSERT INTO "libraries" VALUES(259,'FZip','An Actionscript 3 class library to load, modify and create standard ZIP archives.',NULL,NULL,NULL,NULL,NULL,NULL,'http://codeazur.com.br/lab/fzip/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(260,'AS3 Zip Library','An ActionScript 3 based library for reading and writing zip files.','Here’s an ActionScript 3 based library for reading and writing zip files. I wrote this for another project I’m messing around with and thought I’d release it. I realize there’s already a useful library out there called FZip which is faster at uncompressing zip files as it uses the native uncompress method. However, it may require a script to preprocess a zip and inject Addler32 checksums which this library avoids by implementing a deflate compression decoder (inflater). If you are dealing with zips that only store files or run Python I recommend you check out FZip otherwise give this a try.','swc','http://nochump.com/blog/wp-content/uploads/2008/11/nochump-ziplib-105-dist.zip','','MIT License','http://nochump.com/','http://nochump.com/blog/?p=15','http://nochump.com/ziplib/docs/asdoc/','zip, compression, tools, utilities','','2010-06-19 05:52:18','2010-06-19 06:43:14');
INSERT INTO "libraries" VALUES(261,'MapQuest','MapQuest API',NULL,NULL,NULL,NULL,NULL,NULL,'http://company.mapquest.com/mqbs/4a.html',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(262,'Modest Maps','A display and interaction library for tile-based maps in Flash.',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.modestmaps.com/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(263,'AsWing','A GUI framework and library that allows programmers to make their flash application(or RIA) UI easily.','AsWing is an Open Source Flash ActionScript GUI framework and library that allows programmers to make their flash application(or RIA) UI easily. Its usage is similar to Java Swing. It provides a set of GUI components, which we intent to implement in pure object oriented ActionScript 2. A pluggable look and feel will be implemented too. It also provides many Util classes. AsWing is BSD licensed.

Many look and feel and builder tools are also available in the repository.','svn','http://svn.aswing.org/aswing/','trunk/AsWing/','New BSD License','http://www.aswing.org/','http://www.aswing.org/','http://doc.aswing.org/a3/','swing, framework, gui, ui components','','2010-06-19 05:52:18','2010-06-20 09:41:04');
INSERT INTO "libraries" VALUES(264,'DistortionTweener','Animation Tweening Engine','Feel free to use this class in any way, shape, or form.  If you use it, shoot me an email (matt@reintroducing.com) and let me see what you''re using it on.  I like to see what kind of stuff people make with my classes.  If you want, you can link to me somewhere on your site (it''s a nice gesture, but not required).

I release this stuff because this is how I first learned Flash, from people who released their code open source for everyone to see and take advantage of.  If you modify the class and it works better than what I have (which is great, I would love for people to fix my mistakes), let me know and I''ll re-version it on my site with full credit to you.

Lastly, I normally program in eclipse on a Mac with FDT.  If you load one of my classes and the spacing/formatting of the class looks off, that''s probably why since it doesn''t display similarly on your machine.

Enjoy!

- Matt Przybylski
- http://www.reintroducing.com','zip','http://evolve.reintroducing.com/_source/classes/as3/DistortionTweener/DistortionTweener.zip','/','public domain','http://evolve.reintroducing.com','http://evolve.reintroducing.com/2007/11/18/as3/as3-distortiontweener/','http://evolve.reintroducing.com/_source/classes/as3/DistortionTweener/DistortionTweener.html','tween, animation','','2010-06-19 05:52:18','2010-06-20 10:45:22');
INSERT INTO "libraries" VALUES(265,'FC64','an Open-Source Commodore 64 Emulator.',NULL,NULL,NULL,NULL,NULL,NULL,'https://mirror1.cvsdude.com/trac/osflash/fc64/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(266,'FVNC','VNC Client for Flash Player 9 and above.',NULL,NULL,NULL,NULL,NULL,NULL,'http://osflash.org/fvnc',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(267,'AS3 Parametric Curve Library','AS3 Parametric Curve Library','This library illustrates many practical Actionscript 3 concepts via the development of a 2D parametric curve library. The current library consists of a base set of Classes for constructing single-segment and composite (piecewise) parametric curves','zip','http://www.algorithmist.net/singularity.zip','','','http://www.algorithmist.net/','http://www.algorithmist.net/as3pc.html','','math, curves, parametric, graphics','','2010-06-19 05:52:18','2010-06-19 06:37:50');
INSERT INTO "libraries" VALUES(269,'ASAP Library','A library for the development of maintainable, multi-movie, interactive applications.','Flash ActionScript 3.0 Rich Internet Application library for the development of maintainable, multi-movie, interactive applications. Provides practical, reusable, pattern-based solutions for common challenges in Flash applications.
We are building upon our former project ASAP Framework for Flash Actionscript 2.0.','svn','http://asaplibrary.googlecode.com/svn/trunk','lib/','Apache License, Version 2.0','http://code.google.com','http://asaplibrary.org/','http://asaplibrary.org/api/html/','framework, general, queue, tween, animation','','2010-06-19 05:52:18','2010-06-19 07:29:58');
INSERT INTO "libraries" VALUES(270,'Wordpress XML-RPC API','Wordpress XML-RPC API','Hi there.Ive developed an (almost) fully featured ActionScript library for [WordPress XML-RPC](http://codex.wordpress.org/XML-RPC_Support) , that any flash developer can use to build flash front-ends for WordPress managed sites. The library builds on the work of [Akeem Philbert](http://ak33m.com/) (who developed [this excellent XML-RPC library](http://code.google.com/p/as3-rpclib/) ), and is designed to make connecting Flash with WordPress easy and straightforward.

### About the library

I developed this for the simple reason that there didnt seem to be one available. I wanted a WordPress service that could make sensible method calls in an easy way rather than having to pass everything through `XMLRPCObject` , and I wanted results that would be strongly typed versions of the XML-RPC results, with separate event types for each call. My `WPService` class does exactly that, and I hope some of you out there find it useful.

### Download: [version 1.01](http://as3wordpress.absentdesign.com/flash_wordpress_api_v1_01.zip) 



### Requirements

*  [Akeem Philberts XML-RPC Library](http://code.google.com/p/as3-rpclib/) (included in the download)
*  [The Flex2 SDK](http://labs.adobe.com/technologies/flex/sdk/flex2sdk.html) 



### Documentation

Documentation in ASDoc format is included in the download and is also online here:
 [AS3 WordPress Documentation](http://as3wordpress.absentdesign.com/documentation/) 

### Usage

The use of this library is intended to be straightforwardthere are three basic steps:* Create a `WPService` 
* Add event listeners to listen for server results
* Make a method call using one of the service method groups



#### 1. Create a WPService

>   `var service:WPService = new WPService(myBlogUrl, myUserName, myPassword);` 



#### 2. Add event listeners

>   `service.addEventListener(WPServiceEvent.GET_RECENT_POSTS,getRecentPostsHandler);` 



#### 3. Make a service call using one of the service method groups.

>   `service.posts.getRecentPosts();` 

The WPService class has methodgroups for making calls relating to blogs, posts, pages, categories, tags, comments and authors, eg: `service.posts.getRecentPosts();` will make a call to `wp.getRecentPosts` using the blogUrl, username and password you used to initialize the service.

### A simple example

This class will get the 20 most recent posts from your blog and trace their details to the output window.
_You will need to replace URL, USER, and PASS with your correct details_.>  

    package{
       import flash.display.Sprite;
       import com.absentdesign.core.webapis.events.ServiceEvent;
       import com.absentdesign.core.webapis.wordpress.events.WPServiceEvent;
       import com.absentdesign.core.webapis.wordpress.*;
    
       public class Example extends Sprite{
          private var service:WPService;
          private static const URL:String = "http://path.to.your.blog/";
          private static const USER:String = "your_user_name";
          private static const PASS:String = "your_password";
    
          public function Example(){
             service = new WPService(URL,USER,PASS);
             service.addEventListener(WPServiceEvent.GET_RECENT_POSTS,
                                                     getRecentPostsHandler);
             service.posts.getRecentPosts(20);
          }
    
          protected function getRecentPostsHandler(event:ServiceEvent):void{
             traceData(event.data);
          }
    
          protected function traceData(data:*):void{
             if(data is WPStruct){
                trace(data.getDump())
             }
             else if(data is Array){
                for each(var struct:WPStruct in data){
                   trace(struct.getDump())
                }
             }
             else{
                trace(struct);
             }
          }
       }
    }






### Licence

This library is free to use, modify and distribute under a [New BSD licence](http://www.opensource.org/licenses/bsd-license.php) . If you do find it useful, please let me know at reuben[at]absentdesign[dot]com, or leave a comment below.If you use the library for a commercial project (or just really like it), you may even want to consider a donation: ![](https://www.paypal.com/en_AU/i/scr/pixel.gif) 


### A caveat

There are a few things in the WordPress XML-RPC spec that were not included in the library (most notably wp.getOptions and wp.uploadFile), but these may be included in future releases. This is only version 1, and it has only been tested by me so far. Some things are bound to go wrongif you have a problem with the library then please let me know!

### Changelog

v1.01 : updated `Categories.as` to include `setPostCategories` method ( `mt.setPostCategories` ).','zip','http://as3wordpress.absentdesign.com/flash_wordpress_api_v1_01.zip','','New BSD License','http://as3wordpress.absentdesign.com/','http://blog.absentdesign.com/?page_id=22','http://as3wordpress.absentdesign.com/documentation/','wordpress, blogging, xmlrpc, rpc, api','','2010-06-19 05:52:18','2010-06-20 08:39:35');
INSERT INTO "libraries" VALUES(271,'AlivePDF','ActionScript 3 Open-Source PDF Library – 100% client side PDF generation.','![](http://www.bytearray.org/wp-content/projects/alivepdf/logo.jpg)

AlivePDF is a client side AS3 PDF generation library for Adobe Flash, Flex and AIR.','svn','http://alivepdf.googlecode.com/svn/trunk/','AlivePDFBeta/src/','MIT License','http://code.google.com','http://alivepdf.bytearray.org/','http://www.bytearray.org/wp-content/projects/alivepdf/alivepdf-asdoc/','pdf','','2010-06-19 05:52:18','2010-06-20 09:00:21');
INSERT INTO "libraries" VALUES(272,'NabaztagAPI','Nabaztag API wrapper for Actionscript 3.',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.iotashan.com/NabaztagExplorer/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(273,'myLib','A powerful open source framework designed for advanced components programming with Adobe Flash AS3 projects.',NULL,NULL,NULL,NULL,NULL,NULL,'http://mylib.samystudio.net/ ',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(274,'FDOT','A collection of ActionScript 3 classes that make hard things easier.',NULL,NULL,NULL,NULL,NULL,NULL,'http://onflash.org/ted/2009/08/fdot-making-hard-things-easier.php',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(275,'DirectorAS3','Library for SlideShowPro Director','DirectorAS3 is a native ActionScript 3.0 library that allows Flash and Flex to access the SlideShowPro Director API. This library is loosely based on the concepts used in the DirectorPHP API provided by SlideShowPro.','swc','http://www.tuftandco.net/DirectorAS3/bin/DirectorAS3.swc','/','Apache License, Version 2.0','http://www.tuftandco.net/','http://www.tuftandco.net/DirectorAS3/','http://www.tuftandco.net/DirectorAS3/doc/index.html','SlideShowPro','','2010-06-19 05:52:18','2010-06-20 10:42:34');
INSERT INTO "libraries" VALUES(276,'ARTionscript','An AS3 Generative Art Framework','

# ARTionscript is an AS3&#x27;Generative Art&#x27; Framework



## Aim

The aim of this project is to decrease the barrier to entry as well as openly share code an algorithms relating to generative art.

## Concept

Conceptually there is a&#x27;Studio&#x27; (Main/Document Class) which has access to&#x27;Artists&#x27; (algorithms / rules). The&#x27;Artist&#x27; is given a&#x27;Canvas&#x27; (a glorified Sprite), can be given some&#x27;Inspiration&#x27; (eg. a Flickr image / sound file) and a&#x27;Palette&#x27; (eg. a Kuler colour theme).The&#x27;Artist&#x27; then creates the art work on and to the dimensions of&#x27;Canvas&#x27;. The resulting artwork is created using his own internal algorithms, which is influenced by the&#x27;Inspiration&#x27; and painted in colours of the&#x27;Palette&#x27; given to him.You can request the&#x27;Artist&#x27; retry by pressing the Keyboard.SPACE or alternatively you can export the artwork as a bitmap using&#x27;ctrlKey + S&#x27;.

## Contributing

*The code here is not perfect and we don&#x27;t expect yours to be either.*So... write some code, create something crazy, rework another&#x27;Artist&#x27;, team up with others, but most importantly__share it__!

## Forum / Help

A forum has been set-up in order for you to share your ideas and get some help. [http://artionscript.com/bb/](http://artionscript.com/bb/) 

## Examples

 ![](http://farm3.static.flickr.com/2606/3920127297_521bc12664_m.jpg)  ![](http://farm3.static.flickr.com/2464/3920127979_2ee80686d5_m.jpg)  ![](http://farm4.static.flickr.com/3488/3920909878_7ab4ae2e45_m.jpg)  ![](http://farm3.static.flickr.com/2605/3920122637_9067b4498d_m.jpg)  ![](http://farm3.static.flickr.com/2533/3920128313_2340a4567e_m.jpg)  ![](http://farm4.static.flickr.com/3420/3920911192_04427cc66f_m.jpg) 

## Inspiration

* Jared Tarbell [http://www.levitated.net/daily/index.html](http://www.levitated.net/daily/index.html) 
* Keith Peters [http://www.artfromcode.com/](http://www.artfromcode.com/) 
* Erik Natzke [http://jot.eriknatzke.com/](http://jot.eriknatzke.com/) 
* Joshua Davis [http://www.joshuadavis.com/tag/artwork/](http://www.joshuadavis.com/tag/artwork/) 

','svn','http://artionscript.googlecode.com/svn/trunk/','/','MIT License','http://code.google.com','http://artionscript.com/','','generativeart, art, computerart','','2010-06-19 05:52:18','2010-06-19 06:07:47');
INSERT INTO "libraries" VALUES(277,'ffffound-as3-api','FFFFOUND! (unofficial) AS3 API',NULL,NULL,NULL,NULL,NULL,NULL,'http://toki-woki.net/blog/p336-ffffound-as3-api',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(278,'HYPE Framework','A collaborative visual framework (Branden Hall and Joshua Davis)',NULL,NULL,NULL,NULL,NULL,NULL,'http://hype.joshuadavis.com/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(279,'TempoLite','A small, efficient media library',NULL,NULL,NULL,NULL,NULL,NULL,'http://blog.coursevector.com/tempolite',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(280,'SoundManager','Makes adding sounds to your projects super simple',NULL,NULL,NULL,NULL,NULL,NULL,'http://evolve.reintroducing.com/2008/07/15/news/as3-soundmanager/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(281,'TextFlowPro','Enables you to flow a series of textfields together so that they act as a single text container',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.gskinner.com/blog/archives/2009/01/editable_multif.html',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(283,'Active Window Blur','Active Window Blur','Blur behind the transparency of a DisplayObject','git','git://gist.github.com/445670.git','','not known','http://blog.onebyonedesign.com','http://blog.onebyonedesign.com/?p=81','http://blog.onebyonedesign.com/?p=81','display, transparency, effects, blur, graphics','','2010-06-19 05:52:18','2010-06-20 08:49:46');
INSERT INTO "libraries" VALUES(284,'SWFsize','Works with SWFObject and provides control over the swf''s container metrics',NULL,NULL,NULL,NULL,NULL,NULL,'http://chargedweb.com/swfsize/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(285,'pipwerks.SCORM','Adding basic SCORM functionality to an existing Flash file',NULL,NULL,NULL,NULL,NULL,NULL,'http://pipwerks.com/2008/04/27/how-to-add-basic-scorm-code-to-a-flash-movie/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(286,'OpenPyro','An Open Source ActionScript 3 framework built for creating Rich Internet Applications',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.openpyro.org/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(287,'TurboSignals','A library implementing the signals and slots design pattern',NULL,NULL,NULL,NULL,NULL,NULL,'http://jacksondunstan.com/turbosignals',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(288,'evoTinyEngine','Demo scene engine',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.simppa.fi/blog/opensource-demo-engine-evotinyengine/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(289,'XML-RPC','Easy way to get Flash to transfer data with an XML-RPC endpoint',NULL,NULL,NULL,NULL,NULL,NULL,'http://danielmclaren.net/2007/08/03/xmlrpc-for-actionscript-30-free-library',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(293,'Sprouts','An open-source, cross-platform project generation and configuration tool',NULL,NULL,NULL,NULL,NULL,NULL,'http://projectsprouts.org/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(294,'ZaaIL','Broad Image format support for Flash',NULL,NULL,NULL,NULL,NULL,NULL,'http://www.zaalabs.com/2010/04/introducing-zaail-40-image-format-support-for-flash/',NULL,NULL,NULL,'2010-06-19 05:52:18','2010-06-19 05:52:18');
INSERT INTO "libraries" VALUES(295,'Hexagon','hexagon is a collection of independent ActionScript 3 class libraries and an application framework. It consists of the following parts ...','# Hexagonlib

Hexagonlib is a multi-purpose ActionScript 3 class library for Flash Player 10 and upwards which contains separate classes for pure Flash-, Flex- and AIR-based usage.

Hexagonlib features:

* Data Structures
* Display Types (Shapes, Filters, Effects etc.)
* UI Components
* File & Network IO
* Key/Mouse IO
* Preloading (for web-based Flash usage)
* Command Pattern
* Tween engine
* Time classes
* Util classes
  
# Tetragonlib

Tetragonlib is an extension to hexagonlib which provides classes for game development.

tetragonlib features:

* Multi-Tile Engine (orthogonal, hexagonal, isometric)

# Rhombus framework

rhombus is a concrete class framework which provides a quick-start template to set up a basic web-based Flash, desktop-based Flash, web-based Flex or desktop-based Flex application that can be configured externally (via app.ini), loads and parses definable data XML files and provides a debug console inclusive command line interface. rhombus is split into two parts, "app" and "framework", where the "app" classes exist to be modified/extended by the developer while the "framework" classes provide a default api which is not modified.

rhombus features:

* same setup approach for web- and desktop-based flash and flex applications
* Commands
* Debug console incl. CLI
* Screens and Screen Manager (for Flash-based apps)
* config-, locale- and data loaders
* XML data parsers
','svn','http://hexagon.googlecode.com/svn/trunk/','hexagon/src','MIT License','http://code.google.com','http://code.google.com/p/hexagon/','','actionscript, as3, framework, games, gamedev, engine, flash, flex, library, api, isometric, lib, adobe, air','','2010-06-20 09:11:25','2010-06-20 09:11:25');
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_comments_on_user_id" ON "comments" ("user_id");
CREATE INDEX "index_comments_on_library_id" ON "comments" ("library_id");
CREATE INDEX "index_libraries_on_name" ON "libraries" ("name");
CREATE INDEX "index_users_on_state" ON "users" ("state");
COMMIT;
