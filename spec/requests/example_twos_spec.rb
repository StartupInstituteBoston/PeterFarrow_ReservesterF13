require 'spec_helper'

describe "ExampleTwos" do
  describe "GET /example_twos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get example_twos_path
      response.status.should be(200)
    end
  end
end
