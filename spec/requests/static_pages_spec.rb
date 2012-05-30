require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  describe "Home page" do
    before { visit root_path }

    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: 'Inicio') }
  end
  
  describe "Help page" do
    before { visit help_path }

    it { should have_selector('title', text: full_title('Ayuda')) }
  end
  
  describe "About page" do
    before { visit about_path }

    it { should have_selector('title', text: full_title('About')) }
  end
end
