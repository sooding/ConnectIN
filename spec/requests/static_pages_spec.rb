require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the 'Home'" do
      visit '/static_pages/home'
      page.should have_selector(:text => 'Welcome to ContractON')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "ContractON")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end
end
