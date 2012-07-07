require 'spec_helper'

describe "devices/new" do
  before(:each) do
    assign(:device, stub_model(Device,
      :name => "MyString",
      :kind => "MyString",
      :product_id => 1,
      :site_id => 1
    ).as_new_record)
  end

  it "renders new device form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => devices_path, :method => "post" do
      assert_select "input#device_name", :name => "device[name]"
      assert_select "input#device_kind", :name => "device[kind]"
      assert_select "input#device_product_id", :name => "device[product_id]"
      assert_select "input#device_site_id", :name => "device[site_id]"
    end
  end
end
