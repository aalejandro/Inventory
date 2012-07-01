require "spec_helper"

describe RingsController do
  describe "routing" do

    it "routes to #index" do
      get("/rings").should route_to("rings#index")
    end

    it "routes to #new" do
      get("/rings/new").should route_to("rings#new")
    end

    it "routes to #show" do
      get("/rings/1").should route_to("rings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rings/1/edit").should route_to("rings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rings").should route_to("rings#create")
    end

    it "routes to #update" do
      put("/rings/1").should route_to("rings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rings/1").should route_to("rings#destroy", :id => "1")
    end

  end
end
