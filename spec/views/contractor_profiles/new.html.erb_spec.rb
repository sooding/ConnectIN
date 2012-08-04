require 'spec_helper'

describe "contractor_profiles/new" do
  before(:each) do
    assign(:contractor_profile, stub_model(ContractorProfile).as_new_record)
  end

  it "renders new contractor_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contractor_profiles_path, :method => "post" do
    end
  end
end
