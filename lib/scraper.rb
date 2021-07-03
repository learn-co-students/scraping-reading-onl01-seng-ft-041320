require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
text = Nokogiri::HTML(html).css(".headline-26OIBN").text
puts text

courses = Nokogiri::HTML(html).css("#id-3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")
courses.each do |course|
    all = course.css(".text-4GLMvr")
    title = all.css(".title-oE5vT4").text
    body = all.css(".container-1cfI6E p").text
    puts "#{title}: #{body}"
end