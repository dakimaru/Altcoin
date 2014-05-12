require 'open-uri'
require 'nokogiri'

class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def about
  end

  def coinmarket
  	get_currency_info
  end
  
end

private

  	def get_currency_info
    url = "https://coinmarketcap.com/"
    doc = Nokogiri::HTML(open(url))

    @curr_name = []
    @curr_price = []

    doc.css('.currency-name a').first(8).each do |n|  
      @curr_name << n.text
    end

    doc.css('.price').first(8).each do |p|  
      @curr_price << p.text
    end
  end
