require 'spec_helper'

describe "opinions/show" do
  before(:each) do
    @opinion = assign(:opinion, stub_model(Opinion,
      :content => "MyText",
      :contractor_id => 1,
      :company_id => 2,
      :posting_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
