
# Required ruby gems:
#sudo gem install kramdown
#sudo gem install kramdown-parser-gfm

require 'kramdown'
require 'kramdown-parser-gfm'

ARGV.each {|fn|
  file = File.open(fn)
  print (Kramdown::Document.new(file.read, :input=>'GFM', :hard_wrap=>false).to_html)
}
