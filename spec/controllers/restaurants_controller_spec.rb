require "spec_helper"

describe RestaurantsController do
  describe "#index" do

    let! (:restaurant1) {Restaurant.create(name: 'Bobs', description: 'bar and grill', address: '29 Mary St')}
         let! (:restaurant2) {Restaurant.create(name: 'Marys', description:     'bar and grill', address: '29 Bob St')}

    it "gives a 200" do
      get :index
      response.status.should == 200 
    end

    it "renders the template" do
      get :index
      response.should render_template("index")
    end

#    it "show's restaurant" do
#      get :index
#      assigns(:restaurant).should include(restaurant1)     
#    end

#    it "renders the restaurant" do
#      get :index
#        
#      response.body.should include(restaurant1.description)
#    end  

  end
end
