require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 title" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "1 centimo")
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "1 centimo")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Inicio')
    end
  end
end
