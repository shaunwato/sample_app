require 'spec_helper'

describe "Static pages" do

#
# Test the Home Page
#

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

    #
    # Test the Help Page
    #

    describe "Help page" do

      it "should have the h1 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('h1', :text => 'Help')
      end

      it "should have the title 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
      end
    end

    #
    # Test the About Page
    #

    describe "About page" do

      it "should have the h1 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About Us')
      end

      it "should have the title 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
      end
    end
  end

