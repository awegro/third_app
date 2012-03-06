require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { 'Home' }

    it_should_behave_like "all static pages"
  end
  
  describe "Help page" do
    before{visit help_path}
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }
  end
  
  
  describe "About Us page" do
    before{visit about_path}
    let(:heading)    { 'Thank You' }
    let(:page_title) { 'About Us' }
  end
  
  describe "Contact Us Page" do
    before {visit contact_path}
    let(:heading)    { 'Sample App' }
    let(:page_title) { 'Contact' }
  end 
  
  describe "Terms Page" do
    before {visit terms_path}
   let(:heading)    { 'Sample App' }
    let(:page_title) { 'Terms' }
  end
end

