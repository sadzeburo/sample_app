require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the h1 'Home page'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Home')
    end

    it "check title 'Home page'" do
      visit '/static_pages/home'
      page.should have_title("#{base_title} | Home")	  
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "check title 'Help page'" do
      visit '/static_pages/help'
      page.should have_title("#{base_title} | Help")
	  #page.should have_selector('b', :text => 'Help')
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "check title 'About Us page'" do
      visit '/static_pages/about'
      page.should have_title("#{base_title} | About Us")
    end
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "check title 'Contact page'" do
      visit '/static_pages/contact'
      page.should have_title("#{base_title} | Contact")	  
    end
  end
end