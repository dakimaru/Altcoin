  require 'nokogiri'
  require 'open-uri'

class UsersController < ApplicationController
   def show
    @user = User.find(params[:id])
    get_currency_info
  end

  def new
    @user=User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Coinbridge!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def get_currency_info
    url = "https://coinmarketcap.com/"
    doc = Nokogiri::HTML(open(url))

    @curr_name = []
    @curr_price = []

    doc.css('.currency-name a').first(5).each do |n|  
      @curr_name << n.text
    end

    doc.css('.price').first(5).each do |p|  
      @curr_price << p.text
    end
  end

end
