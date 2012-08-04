require 'spec_helper'

describe "contractor_profiles/show" do
  before(:each) do
    @contractor_profile = assign(:contractor_profile, stub_model(ContractorProfile))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
