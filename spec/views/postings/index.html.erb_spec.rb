require 'spec_helper'

describe "postings/index" do
  before(:each) do
    assign(:postings, [
      stub_model(Posting,
        :title => "Title",
        :description => "Description",
        :requirements => "Requirements",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :salary => "9.99",
        :duration => "Duration"
      ),
      stub_model(Posting,
        :title => "Title",
        :description => "Description",
        :requirements => "Requirements",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :salary => "9.99",
        :duration => "Duration"
      )
    ])
  end

  it "renders a list of postings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Requirements".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
  end
end
