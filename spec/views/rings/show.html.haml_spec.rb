require 'spec_helper'

describe "rings/show" do
  before(:each) do
    @ring = assign(:ring, stub_model(Ring,
      :name => "Name",
      :number => "Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Number/)
  end
end
