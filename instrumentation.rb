
require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open('http://imslp.org/wiki/Allegro_vivo_in_C_minor_(Tchaikovsky,_Pyotr)'))
rows = doc.css('.wi_body tr')

rows.each do | row |
header = row.css('th')[0].content.strip!


if header.eql?('Instrumentation')
 puts row.css('td')[0].content

end

instrumentation_hash = {}


# instrumentation_hash = { "flutes" => 2, "oboes" => 2, "clarinets" => 2}

#find_instrumentation('http://imslp.org/wiki/Horn_Concerto_in_E-flat_major,_K.417_(Mozart,_Wolfgang_Amadeus)')
#find_instrumentation('http://imslp.org/wiki/Allegro_vivo_in_C_minor_(Tchaikovsky,_Pyotr)')

# { "flutes": 2,
#   "oboes": 2,
#   "clarinets": 2,
# look up ruby hash, split (strings), regular expressions

# puts /(?<number>[0-9])\W*(?<instrument>.+)/.match('2 oboes')
end
