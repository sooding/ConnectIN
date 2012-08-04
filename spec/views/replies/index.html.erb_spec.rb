require 'spec_helper'

describe "replies/index" do
  before(:each) do
    assign(:replies, [
      stub_model(Reply,
        :content => "",
        :contractor_id => 1,
        :company_id => 2,
        :opinion_id => 3
      ),
      stub_model(Reply,
        :content => "",
        :contractor_id => 1,
        :company_id => 2,
        :opinion_id => 3
      )
    ])
  end

  it "renders a list of replies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
