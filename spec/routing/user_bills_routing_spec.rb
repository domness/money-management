require "spec_helper"

describe UserBillsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_bills").should route_to("user_bills#index")
    end

    it "routes to #new" do
      get("/user_bills/new").should route_to("user_bills#new")
    end

    it "routes to #show" do
      get("/user_bills/1").should route_to("user_bills#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_bills/1/edit").should route_to("user_bills#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_bills").should route_to("user_bills#create")
    end

    it "routes to #update" do
      put("/user_bills/1").should route_to("user_bills#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_bills/1").should route_to("user_bills#destroy", :id => "1")
    end

  end
end
