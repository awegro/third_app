require 'spec_helper'

describe "Static pages" do

let(:base_title) { "Ruby on Rails Tutorial Sample App" }
                    
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text =>'Sample App')
    end
    
    it "should have the right title" do
      visit root_path
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right title" do
        visit help_path
        page.should have_selector('title',
                          :text => "#{base_title} | Help")
    end
  end
  
  
  describe "About Us page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text =>'About Us')
    end
      
    it "should have the right title" do
        visit about_path
        page.should have_selector('title',
                          :text => "#{base_title} | About Us")
    end
  end
  
  describe "Contact Us Page" do

    it "should have the content 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', :text =>'Contact Us')
    end
    
    it "should have the right title" do
        visit contact_path
        page.should have_selector('title',
                          :text => "#{base_title} | Contact Us")
    end
  end 
  
  describe "Terms Page" do

    it "should have the content 'Terms" do
      visit terms_path
      page.should have_selector('h1', :text =>'Terms')
    end
  end
end

