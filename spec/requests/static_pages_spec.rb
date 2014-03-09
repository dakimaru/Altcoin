require 'spec_helper'

describe "Static pages" do

  let(:basic_title) { "Altcoin |"}
  
  describe "Home page" do

    it "should have the content 'Altcoin App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Altcoin App')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_title("#{basic_title} Homepage")
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_title("#{basic_title} Help")
    end
  end

  describe  "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
  
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_title("#{basic_title} About")
    end
  end
  
  describe  "Contact page" do
    
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
  
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_title("#{basic_title} Contact")
    end
  end
end