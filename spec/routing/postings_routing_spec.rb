require "spec_helper"

describe PostingsController do
  describe "routing" do

    it "routes to #index" do
      get("/postings").should route_to("postings#index")
    end

    it "routes to #new" do
      get("/postings/new").should route_to("postings#new")
    end

    it "routes to #show" do
      get("/postings/1").should route_to("postings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/postings/1/edit").should route_to("postings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/postings").should route_to("postings#create")
    end

    it "routes to #update" do
      put("/postings/1").should route_to("postings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/postings/1").should route_to("postings#destroy", :id => "1")
    end

  end
end
