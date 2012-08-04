require "spec_helper"

describe ContractorProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/contractor_profiles").should route_to("contractor_profiles#index")
    end

    it "routes to #new" do
      get("/contractor_profiles/new").should route_to("contractor_profiles#new")
    end

    it "routes to #show" do
      get("/contractor_profiles/1").should route_to("contractor_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contractor_profiles/1/edit").should route_to("contractor_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contractor_profiles").should route_to("contractor_profiles#create")
    end

    it "routes to #update" do
      put("/contractor_profiles/1").should route_to("contractor_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contractor_profiles/1").should route_to("contractor_profiles#destroy", :id => "1")
    end

  end
end
