Library.find(:all, :conditions => {:host => "http://code.google.com"}).each do |lib|
  page = Hpricot(open(lib.homepage))
  wiki = (page/"#wikicontent")
  parser = HTMLToMarkdownParser.new
  parser.feed(wiki.innerHTML)
  lib.description = parser.to_markdown
  lib.update
end
  