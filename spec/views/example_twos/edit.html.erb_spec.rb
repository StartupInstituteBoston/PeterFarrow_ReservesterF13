require 'spec_helper'

describe "example_twos/edit" do
  before(:each) do
    @example_two = assign(:example_two, stub_model(ExampleTwo,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit example_two form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", example_two_path(@example_two), "post" do
      assert_select "input#example_two_name[name=?]", "example_two[name]"
      assert_select "textarea#example_two_description[name=?]", "example_two[description]"
    end
  end
end
