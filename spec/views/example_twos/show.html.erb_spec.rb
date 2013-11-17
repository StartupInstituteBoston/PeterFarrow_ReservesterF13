require 'spec_helper'

describe "example_twos/show" do
  before(:each) do
    @example_two = assign(:example_two, stub_model(ExampleTwo,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
