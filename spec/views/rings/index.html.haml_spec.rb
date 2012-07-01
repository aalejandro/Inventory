require 'spec_helper'

describe "rings/index" do
  before(:each) do
    assign(:rings, [
      stub_model(Ring,
        :name => "Name",
        :number => "Number"
      ),
      stub_model(Ring,
        :name => "Name",
        :number => "Number"
      )
    ])
  end

  it "renders a list of rings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
  end
end
