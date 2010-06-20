xml.instruct!
xml.comment! "Fluxus library project - Flex/AS3 class library and swc package management"
xml.fluxus {
  Library.all.each { |l|
    xml.library( :name => l.name, :package => l.package, :repo => l.repository, :docs => l.docs, :license => l.license, :home => l.homepage )
  }
}