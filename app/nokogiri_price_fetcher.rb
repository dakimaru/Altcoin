require 'nokogiri'
require 'rubygems'
require 'open-uri'

	url = "https://coinmarketcap.com/"
	doc = Nokogiri::HTML(open(url))

	doc.css('.currency-name a').first(5).each do |n|
		@curr_name ||= []
		@curr_name << n.text
	end
	
	doc.css('.price').first(5).each do |p|
		@curr_price ||= []
		@curr_price << p.text
	end


	curr_name = []

	doc.css('.currency-name a').first(5).each do |n|	
		curr_name << n.text
	end

	puts curr_name