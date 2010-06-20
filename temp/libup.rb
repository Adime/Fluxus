Library.find(:all, :conditions => {:host => "http://code.google.com"} ).each do |lib|
  h = Hpricot(open(lib.homepage))
  p = HTMLToMarkdownParser.new
  p.feed((h/"#wikicontent").to_s)
  lib.description = p.to_markdown
  lib.update
end