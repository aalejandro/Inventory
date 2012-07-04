require 'spec_helper'

describe "sites/edit" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :name => "MyString",
      :open_mobile_site_id => 1,
      :direction => "MyString"
    ))
  end

  it "renders the edit site form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sites_path(@site), :method => "post" do
      assert_select "input#site_name", :name => "site[name]"
      assert_select "input#site_open_mobile_site_id", :name => "site[open_mobile_site_id]"
      assert_select "input#site_direction", :name => "site[direction]"
    end
  end
end
