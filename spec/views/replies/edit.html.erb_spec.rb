require 'spec_helper'

describe "replies/edit" do
  before(:each) do
    @reply = assign(:reply, stub_model(Reply,
      :content => "",
      :contractor_id => 1,
      :company_id => 1,
      :opinion_id => 1
    ))
  end

  it "renders the edit reply form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => replies_path(@reply), :method => "post" do
      assert_select "input#reply_content", :name => "reply[content]"
      assert_select "input#reply_contractor_id", :name => "reply[contractor_id]"
      assert_select "input#reply_company_id", :name => "reply[company_id]"
      assert_select "input#reply_opinion_id", :name => "reply[opinion_id]"
    end
  end
end
