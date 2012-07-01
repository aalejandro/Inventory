require 'spec_helper'

describe "manufacturers/index" do
  before(:each) do
    assign(:manufacturers, [
      stub_model(Manufacturer,
        :name => "Name"
      ),
      stub_model(Manufacturer,
        :name => "Name"
      )
    ])
  end

  it "renders a list of manufacturers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
