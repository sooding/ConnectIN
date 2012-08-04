require 'spec_helper'

describe "opinions/edit" do
  before(:each) do
    @opinion = assign(:opinion, stub_model(Opinion,
      :content => "MyText",
      :contractor_id => 1,
      :company_id => 1,
      :posting_id => 1
    ))
  end

  it "renders the edit opinion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => opinions_path(@opinion), :method => "post" do
      assert_select "textarea#opinion_content", :name => "opinion[content]"
      assert_select "input#opinion_contractor_id", :name => "opinion[contractor_id]"
      assert_select "input#opinion_company_id", :name => "opinion[company_id]"
      assert_select "input#opinion_posting_id", :name => "opinion[posting_id]"
    end
  end
end
