require 'spec_helper'

describe "manufacturers/show" do
  before(:each) do
    @manufacturer = assign(:manufacturer, stub_model(Manufacturer,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
