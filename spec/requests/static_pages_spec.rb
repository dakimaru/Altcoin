require 'spec_helper'

describe "Static pages" do

  let(:basic_title) { "Altcoin |"}
  
  describe "Home page" do

    it "should have the content 'Altcoin App'" do
      visit root_path
      page.should have_selector('h1', text: 'Altcoin App')
    end
    
    it "should have the right title" do
      visit root_path
      page.should have_title("Altcoin")
    end

    it "should not have a custom title for the Homepage" do
      visit root_path
      page.should_not have_title("|")
    end

  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end
    
    it "should have the right title" do
      visit help_path
      page.should have_title("#{basic_title} Help")
    end
  end

  describe  "About page" do

    it "should_not have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do
      visit about_path
      page.should have_title("#{basic_title} About")
    end
  end
  
  describe  "Contact page" do

    it "should have the content 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact Us')
    end

    it "should have the right title" do
      visit contact_path
      page.should have_title("#{basic_title} Contact")
    end
  end
end