require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.sinfest.net"))
tags = doc.css('p')
tags_text = tags.map { |e| e.text.strip }
tags_words = tags_text.map { |t| t.split(/\s+/) }
words = tags_words.flatten.join(' ')
puts words

