require 'spec_helper'

describe "opinions/index" do
  before(:each) do
    assign(:opinions, [
      stub_model(Opinion,
        :content => "MyText",
        :contractor_id => 1,
        :company_id => 2,
        :posting_id => 3
      ),
      stub_model(Opinion,
        :content => "MyText",
        :contractor_id => 1,
        :company_id => 2,
        :posting_id => 3
      )
    ])
  end

  it "renders a list of opinions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
