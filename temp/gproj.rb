#!/usr/bin/env ruby

require 'rubygems'
require 'hpricot'
require 'open-uri'
require 'html2textile'
require 'pp'

googleprojects = [
{ :name => "as3dmod", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/as3dmod/", :svnurl => "http://as3dmod.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "nd3d", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/nd3d/", :svnurl => "http://nd3d.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "tweener", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/tweener/", :svnurl => "http://tweener.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "kitchensynclib", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/kitchensynclib/", :svnurl => "http://kitchensynclib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "gyro-actionscript-animation", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/gyro-actionscript-animation/", :svnurl => "http://gyro-actionscript-animation.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "twease", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/twease/", :svnurl => "http://twease.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "thelaboratory-tween", :description => "", :tags => "", :license => "GNU General Public License v3", :homeurl => "http://code.google.com/p/thelaboratory-tween/", :svnurl => "http://thelaboratory-tween.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "eaze-tween", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/eaze-tween/", :svnurl => "http://eaze-tween.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "actuate", :description => "", :tags => "", :license => "GNU General Public License v3", :homeurl => "http://code.google.com/p/actuate/", :svnurl => "http://actuate.googlecode.com/svn/trunk", :sourcepath => "Source/" },
{ :name => "foam-as3", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/foam-as3/", :svnurl => "http://foam-as3.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "glaze", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/glaze/", :svnurl => "http://glaze.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "popforge", :description => "", :tags => "", :license => "GNU General Public License v2", :homeurl => "http://code.google.com/p/popforge/", :svnurl => "http://popforge.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "emitter", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/emitter/", :svnurl => "http://emitter.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "stardust-particle-engine", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/stardust-particle-engine/", :svnurl => "http://stardust-particle-engine.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "particlesun", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/particlesun/", :svnurl => "http://particlesun.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "bulk-loader", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/bulk-loader/", :svnurl => "http://bulk-loader.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "masapi", :description => "", :tags => "", :license => "GNU Lesser General Public License", :homeurl => "http://code.google.com/p/masapi/", :svnurl => "http://masapi.googlecode.com/svn/trunk", :sourcepath => "resources/
src/" },
{ :name => "swizframework", :description => "", :tags => "", :license => "Apache License 2.0", :homeurl => "http://code.google.com/p/swizframework/", :svnurl => "http://swizframework.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "flex-slide", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/flex-slide/", :svnurl => "http://flex-slide.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "vegas", :description => "", :tags => "", :license => "Mozilla Public License 1.1", :homeurl => "http://code.google.com/p/vegas/", :svnurl => "http://vegas.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "lowra", :description => "", :tags => "", :license => "Mozilla Public License 1.1", :homeurl => "http://code.google.com/p/lowra/", :svnurl => "http://lowra.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as-hive", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/as-hive/", :svnurl => "http://as-hive.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "fosfr", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/fosfr/", :svnurl => "http://fosfr.googlecode.com/svn/trunk", :sourcepath => "source/" },
{ :name => "facebook-actionscript-api", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/facebook-actionscript-api/", :svnurl => "http://facebook-actionscript-api.googlecode.com/svn/trunk", :sourcepath => "source/" },
{ :name => "as3facebooklib", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/as3facebooklib/", :svnurl => "http://as3facebooklib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3corelib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3corelib/", :svnurl => "http://as3corelib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3flexunitlib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3flexunitlib/", :svnurl => "http://as3flexunitlib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3flickrlib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3flickrlib/", :svnurl => "http://as3flickrlib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3mapprlib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3mapprlib/", :svnurl => "http://as3mapprlib.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "as3syndicationlib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3syndicationlib/", :svnurl => "http://as3syndicationlib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3odeolib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3odeolib/", :svnurl => "http://as3odeolib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3youtubelib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3youtubelib/", :svnurl => "http://as3youtubelib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3ebaylib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3ebaylib/", :svnurl => "http://as3ebaylib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3awss3lib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3awss3lib/", :svnurl => "http://as3awss3lib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3soundeditorlib", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/as3soundeditorlib/", :svnurl => "http://as3soundeditorlib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3ds", :description => "", :tags => "", :license => "", :homeurl => "http://code.google.com/p/as3ds/", :svnurl => "http://as3ds.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "as3notificationlib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3notificationlib/", :svnurl => "http://as3notificationlib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3preferenceslib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3preferenceslib/", :svnurl => "http://as3preferenceslib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3nativealertlib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3nativealertlib/", :svnurl => "http://as3nativealertlib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "ascollada", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/ascollada/", :svnurl => "http://ascollada.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "lastfm-as3", :description => "", :tags => "", :license => "GNU General Public License v2", :homeurl => "http://code.google.com/p/lastfm-as3/", :svnurl => "http://lastfm-as3.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "as3cards", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/as3cards/", :svnurl => "http://as3cards.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "flexircclient", :description => "", :tags => "", :license => "Artistic License/GPL", :homeurl => "http://code.google.com/p/flexircclient/", :svnurl => "http://flexircclient.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "as3httpclient", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3httpclient/", :svnurl => "http://as3httpclient.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "ascanvas", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/ascanvas/", :svnurl => "http://ascanvas.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "dopplr-as3", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/dopplr-as3/", :svnurl => "http://dopplr-as3.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3webservice", :description => "", :tags => "", :license => "GNU General Public License v3", :homeurl => "http://code.google.com/p/as3webservice/", :svnurl => "http://as3webservice.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3jayrock", :description => "", :tags => "", :license => "GNU Lesser General Public License", :homeurl => "http://code.google.com/p/as3jayrock/", :svnurl => "http://as3jayrock.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3maillib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3maillib/", :svnurl => "http://as3maillib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "flash-camouflage", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/flash-camouflage/", :svnurl => "http://flash-camouflage.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "flexlib", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/flexlib/", :svnurl => "http://flexlib.googlecode.com/svn/trunk", :sourcepath => "src/
src-test/" },
{ :name => "as3-fullscreen-lib", :description => "", :tags => "", :license => "GNU General Public License v3", :homeurl => "http://code.google.com/p/as3-fullscreen-lib/", :svnurl => "http://as3-fullscreen-lib.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "coordy", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/coordy/", :svnurl => "http://coordy.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "vectorvision", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/vectorvision/", :svnurl => "http://vectorvision.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "wiiflash", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/wiiflash/", :svnurl => "http://wiiflash.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "twitterscript", :description => "", :tags => "", :license => "Apache License 2.0", :homeurl => "http://code.google.com/p/twitterscript/", :svnurl => "http://twitterscript.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "oauth-as3", :description => "", :tags => "", :license => "Apache License 2.0", :homeurl => "http://code.google.com/p/oauth-as3/", :svnurl => "http://oauth-as3.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "swfobject", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/swfobject/", :svnurl => "http://swfobject.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "tweetr", :description => "", :tags => "", :license => "GNU Lesser General Public License", :homeurl => "http://code.google.com/p/tweetr/", :svnurl => "http://tweetr.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3scribdlib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3scribdlib/", :svnurl => "http://as3scribdlib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "xpath-as3", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/xpath-as3/", :svnurl => "http://xpath-as3.googlecode.com/svn/trunk", :sourcepath => "src/
testsrc/" },
{ :name => "swx-format", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/swx-format/", :svnurl => "http://swx-format.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "openplatform-flash", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/openplatform-flash/", :svnurl => "http://openplatform-flash.googlecode.com/svn/trunk", :sourcepath => "" },
{ :name => "colormunch", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/colormunch/", :svnurl => "http://colormunch.googlecode.com/svn/trunk", :sourcepath => "Source/" },
{ :name => "gaforflash", :description => "", :tags => "", :license => "Apache License 2.0", :homeurl => "http://code.google.com/p/gaforflash/", :svnurl => "http://gaforflash.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "minimalcomps", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/minimalcomps/", :svnurl => "http://minimalcomps.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "polygonal", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/polygonal/", :svnurl => "http://polygonal.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "as3-rpclib", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/as3-rpclib/", :svnurl => "http://as3-rpclib.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "governor", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/governor/", :svnurl => "http://governor.googlecode.com/svn/trunk", :sourcepath => "governor --username mlueft/classes/" },
{ :name => "mojocolors", :description => "", :tags => "", :license => "GNU General Public License v2", :homeurl => "http://code.google.com/p/mojocolors/", :svnurl => "http://mojocolors.googlecode.com/svn/trunk", :sourcepath => "mojocolors/src/" },
{ :name => "flashdraw3d", :description => "", :tags => "", :license => "New BSD License", :homeurl => "http://code.google.com/p/flashdraw3d/", :svnurl => "http://flashdraw3d.googlecode.com/svn/trunk", :sourcepath => "src/" },
{ :name => "flvslicer", :description => "", :tags => "", :license => "MIT License", :homeurl => "http://code.google.com/p/flvslicer/", :svnurl => "http://flvslicer.googlecode.com/svn/FLVSlicer", :sourcepath => "/src" }
]

#googleprojects.each do |proj|
#	if (proj[:sourcepath] == "") then
		# puts proj[:svnurl]
		# document = `curl #{proj[:homeurl]}`
#	end
#end

googleprojects.each do |proj|
	begin
		doc = open(proj[:homeurl]) {|f| Hpricot(f) }
		
		description = Hpricot.parse((doc/"#wikicontent").innerHTML)
		parser = HTMLToTextileParser.new
		parser.feed(description.to_s)
		proj[:description] = parser.to_textile
		
	rescue
		puts "#{proj[:homeurl]} "
	end
end
pp googleprojects


