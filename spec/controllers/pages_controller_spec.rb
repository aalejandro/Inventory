require 'spec_helper'

describe PagesController, "Routing" do
  it {{get: '/'}.should route_to(controller: 'pages', action: 'home')}
end

describe PagesController do
  context "GET home" do
    it "should be success" do
      get :home
      response.should be_success
    end
  end
end
