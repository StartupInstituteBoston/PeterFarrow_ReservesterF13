require 'spec_helper'

describe "Testing restaurant routes" do
  # Use Factory Girl here
  let!(:restaurant1){Restaurant.create(name: "restaurant1", description: "test", address: "test")} 

  describe 'Confirm showing a resturant works' do
    it 'renders a page containing the restaurant name' do
      get "restaurants/#{restaurant1.id}"
      expect(response.status).to eq(200)
      response.status.should == 200
      expect(response.body).to include("restaurant1")
    end  
  end
end
