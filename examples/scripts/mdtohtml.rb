require 'kramdown'

ARGV.each {|fn|
  file = File.open(fn)
  print (Kramdown::Document.new(file.read).to_html)
}
