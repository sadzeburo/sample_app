require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the h1 'Home page'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Home')
    end

    it "check title 'Home page'" do
      visit '/static_pages/home'
      page.should have_title("Home")	  
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "check title 'Help page'" do
      visit '/static_pages/help'
      page.should have_title('Help')
	  page.should have_selector('b', :text => 'Help')
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "check title 'About Us page'" do
      visit '/static_pages/about'
      page.should have_title('About Us')	  
    end
  end
end