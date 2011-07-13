require "spec_helper"

describe LoginsController do
  describe "routing" do

    it "routes to #index" do
      get("/logins").should route_to("logins#index")
    end

    it "routes to #new" do
      get("/logins/new").should route_to("logins#new")
    end

    it "routes to #show" do
      get("/logins/1").should route_to("logins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/logins/1/edit").should route_to("logins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/logins").should route_to("logins#create")
    end

    it "routes to #update" do
      put("/logins/1").should route_to("logins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/logins/1").should route_to("logins#destroy", :id => "1")
    end

  end
end
