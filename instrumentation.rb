require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

page_content = open('http://imslp.org/wiki/Allegro_vivo_in_C_minor_(Tchaikovsky,_Pyotr)')

first_array = page_content.split("<th>Instrumentation")

first_string = first_array.pop

second_array = first_string.split("External Links")

raw_instrumentation_string = second_array.shift

instrumentation_string = raw_instrumentation_string.sub("(B<span class=\"music-symbol\" style=\"font-family\: Arial Unicode MS, Lucida Sans Unicode\; font-size\:110\%\"\>\&\#x266d\;\</span>)", "").sub(" (E\<span class=\"music-symbol\" style=\"font-family: Arial Unicode MS, Lucida Sans Unicode; font-size:110%\">&#x266d;</span>\)", ",").sub(" +", ",").sub("<td><i>Orchestra</i>: ", "")

puts instrumentation_string

#other things I've tried but not made work properly
#instrumentation_string = page_content.scan( /<th> Instrumentation([^>]*)External Links/).first
#instrumentation_string = raw_instrumentation_string.sub(/B<span...<\/span>)/, "")
