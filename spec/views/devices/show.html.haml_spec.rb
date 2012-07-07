require 'spec_helper'

describe "devices/show" do
  before(:each) do
    @device = assign(:device, stub_model(Device,
      :name => "Name",
      :kind => "Kind",
      :product_id => 1,
      :site_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Kind/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
