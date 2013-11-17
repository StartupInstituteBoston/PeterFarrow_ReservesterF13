require "spec_helper"

describe ExampleTwosController do
  describe "routing" do

    it "routes to #index" do
      get("/example_twos").should route_to("example_twos#index")
    end

    it "routes to #new" do
      get("/example_twos/new").should route_to("example_twos#new")
    end

    it "routes to #show" do
      get("/example_twos/1").should route_to("example_twos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/example_twos/1/edit").should route_to("example_twos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/example_twos").should route_to("example_twos#create")
    end

    it "routes to #update" do
      put("/example_twos/1").should route_to("example_twos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/example_twos/1").should route_to("example_twos#destroy", :id => "1")
    end

  end
end
