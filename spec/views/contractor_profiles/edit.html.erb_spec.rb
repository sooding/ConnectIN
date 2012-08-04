require 'spec_helper'

describe "contractor_profiles/edit" do
  before(:each) do
    @contractor_profile = assign(:contractor_profile, stub_model(ContractorProfile))
  end

  it "renders the edit contractor_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contractor_profiles_path(@contractor_profile), :method => "post" do
    end
  end
end
