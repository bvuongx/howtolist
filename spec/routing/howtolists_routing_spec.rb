require "spec_helper"

describe HowtolistsController do
  describe "routing" do

    it "routes to #index" do
      get("/howtolists").should route_to("howtolists#index")
    end

    it "routes to #new" do
      get("/howtolists/new").should route_to("howtolists#new")
    end

    it "routes to #show" do
      get("/howtolists/1").should route_to("howtolists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/howtolists/1/edit").should route_to("howtolists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/howtolists").should route_to("howtolists#create")
    end

    it "routes to #update" do
      put("/howtolists/1").should route_to("howtolists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/howtolists/1").should route_to("howtolists#destroy", :id => "1")
    end

  end
end
