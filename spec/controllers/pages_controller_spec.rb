require 'spec_helper'

describe PagesController do
  context "GET home" do
    it "should be success" do
      get :home
      response.should be_success
    end
  end
end
