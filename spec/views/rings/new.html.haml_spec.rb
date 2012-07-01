require 'spec_helper'

describe "rings/new" do
  before(:each) do
    assign(:ring, stub_model(Ring,
      :name => "MyString",
      :number => "MyString"
    ).as_new_record)
  end

  it "renders new ring form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rings_path, :method => "post" do
      assert_select "input#ring_name", :name => "ring[name]"
      assert_select "input#ring_number", :name => "ring[number]"
    end
  end
end
