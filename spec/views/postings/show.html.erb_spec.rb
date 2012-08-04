require 'spec_helper'

describe "postings/show" do
  before(:each) do
    @posting = assign(:posting, stub_model(Posting,
      :title => "Title",
      :description => "Description",
      :requirements => "Requirements",
      :city => "City",
      :state => "State",
      :zipcode => "Zipcode",
      :salary => "9.99",
      :duration => "Duration"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Requirements/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zipcode/)
    rendered.should match(/9.99/)
    rendered.should match(/Duration/)
  end
end
