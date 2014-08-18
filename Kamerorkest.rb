require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open('http://www.cs.vu.nl/~rutger/vuko/nl/lijst_van_ooit/complete-solo.html'))
full_abbrevs = doc.css('.content td[3]')

headings = ['Flute', 'Oboe', 'Clarinet', 'Bassoon', 'Trumpet', 'French Horn', 'Trombone', 'Tuba', 'Timpani', 'Percussion', 'Other', 'Other', 'Other']

full_abbrevs.each do | abbrev |
	
Instrumentation = Hash[headings.zip(abbrev)]

end

instrumentation_xml = Instrumentation.to_xml(:root => 'Work')

puts instrumentation_xml


