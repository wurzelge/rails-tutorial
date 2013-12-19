require 'spec_helper'

describe "Static pages" do

  let(:base_title)  { "Learn Ruby |" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
	visit '/static_pages/home'
	expect(page).to have_title("#{base_title} Home")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
