require 'spec_helper'

describe "Static pages" do

  subject {page}
  
  describe "Home page" do
    before {visit root_path}
    it {should have_selector('h1', text: 'Coinbridge')}
    it {should have_title("Coinbridge")}
    it {should_not have_title("|")}
  end
  
  describe "Help page" do
    before {visit help_path}
    it {should have_selector('h1', text: 'Help')}
    it {should have_title('Help')}
  end

  describe  "About page" do
    before {visit about_path}
    it {should have_selector('h1', text: 'About Us')}
    it {should have_title('About')}
  end
  
  describe  "Contact page" do
    before {visit contact_path}
    it {should have_selector('h1', text: 'Contact Us')}
    it {should have_title('Contact')}  #fulltitle
  end

end