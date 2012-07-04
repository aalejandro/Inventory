require 'spec_helper'

describe "sites/index" do
  before(:each) do
    assign(:sites, [
      stub_model(Site,
        :name => "Name",
        :open_mobile_site_id => 1,
        :direction => "Direction"
      ),
      stub_model(Site,
        :name => "Name",
        :open_mobile_site_id => 1,
        :direction => "Direction"
      )
    ])
  end

  it "renders a list of sites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Direction".to_s, :count => 2
  end
end
