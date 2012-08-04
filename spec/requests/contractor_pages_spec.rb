require 'spec_helper'

describe "Contractor pages" do

  subject { page }

describe "index" do

    let(:contractor) { FactoryGirl.create(:contractor) }

    before do
      sign_in contractor
    end

    describe "pagination" do
      before(:all) { 10.times { FactoryGirl.create(:contractor) } }
      after(:all)  { Contractor.delete_all }


      it "should list each contractor" do
        Contractor.all[0..2].each do |contractor|
          page.should have_selector('li', text: contractor.firstName)
        end
      end
    end
  end

  describe "profile page" do
    let(:contractor) { FactoryGirl.create(:contractor) }
    before { visit contractor_path(contractor) }

    it { should have_selector('h1',    text: contractor.firstName) }
    it { should have_selector('title', text: contractor.firstName) }
  end
end