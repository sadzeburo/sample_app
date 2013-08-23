require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Home Page'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    
  end
  
  describe "Help page" do

    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      page.should have_content('11111')
    end
    
  end
  
  describe "About Us" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    
  end

end