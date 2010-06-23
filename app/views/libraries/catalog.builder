xml.instruct!
xml.comment! "Fluxus library project - Flex/AS3 class library and swc package management"
xml.fluxus {
  @libraries.each { |lib|
    xml.library( 
        :name => lib.name, 
        :package => lib.package, 
        :repository => lib.repository, 
        :sourcepath => lib.sourcepath,
        :docs => lib.docs,
        :license => lib.license, 
        :homepage => lib.homepage
    )
  }
}
