require 'spec_helper'

describe "contractor_profiles/index" do
  before(:each) do
    assign(:contractor_profiles, [
      stub_model(ContractorProfile),
      stub_model(ContractorProfile)
    ])
  end

  it "renders a list of contractor_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
