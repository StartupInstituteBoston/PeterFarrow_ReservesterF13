require 'spec_helper'

describe "example_twos/index" do
  before(:each) do
    assign(:example_twos, [
      stub_model(ExampleTwo,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(ExampleTwo,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of example_twos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
