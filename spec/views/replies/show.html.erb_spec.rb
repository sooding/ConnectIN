require 'spec_helper'

describe "replies/show" do
  before(:each) do
    @reply = assign(:reply, stub_model(Reply,
      :content => "",
      :contractor_id => 1,
      :company_id => 2,
      :opinion_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
