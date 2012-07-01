require 'spec_helper'

describe "rings/edit" do
  before(:each) do
    @ring = assign(:ring, stub_model(Ring,
      :name => "MyString",
      :number => "MyString"
    ))
  end

  it "renders the edit ring form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rings_path(@ring), :method => "post" do
      assert_select "input#ring_name", :name => "ring[name]"
      assert_select "input#ring_number", :name => "ring[number]"
    end
  end
end
