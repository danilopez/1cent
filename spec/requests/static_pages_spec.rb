require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the title" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: " | Home")
    end
  end
end
