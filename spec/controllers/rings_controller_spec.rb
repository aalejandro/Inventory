require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RingsController do

  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = FactoryGirl.create(:user_ash)
    sign_in user
  end

  describe "GET index" do
    it "assigns all rings as @rings" do
      ring = FactoryGirl.create(:ring)
      get :index, {}
      assigns(:rings).should eq([ring])
    end
  end

  describe "GET show" do
    it "assigns the requested ring as @ring" do
      ring = FactoryGirl.create(:ring)
      get :show, {:id => ring.id}
      assigns(:ring).should eq(ring)
    end
  end

  describe "GET new" do
    it "assigns a new ring as @ring" do
      get :new, {}
      assigns(:ring).should be_a_new(Ring)
    end
  end

  describe "GET edit" do
    it "assigns the requested ring as @ring" do
      ring = FactoryGirl.create(:ring)
      get :edit, {:id => ring.id}
      assigns(:ring).should eq(ring)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ring" do
        expect {
          post :create, {:ring => FactoryGirl.attributes_for(:ring)}
        }.to change(Ring, :count).by(1)
      end

      it "assigns a newly created ring as @ring" do
        post :create, {:ring => FactoryGirl.attributes_for(:ring)}
        assigns(:ring).should be_a(Ring)
        assigns(:ring).should be_persisted
      end

      it "redirects to the created ring" do
        post :create, {:ring => FactoryGirl.attributes_for(:ring)}
        response.should redirect_to(Ring.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ring as @ring" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ring.any_instance.stub(:save).and_return(false)
        post :create, {:ring => {}}
        assigns(:ring).should be_a_new(Ring)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ring.any_instance.stub(:save).and_return(false)
        post :create, {:ring => {}}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ring" do
        ring = FactoryGirl.create(:ring)
        # Assuming there are no other rings in the database, this
        # specifies that the Ring created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ring.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => ring.id, :ring => {'these' => 'params'}}
      end

      it "assigns the requested ring as @ring" do
        ring = FactoryGirl.create(:ring)
        put :update, {:id => ring.id, :ring => {name: "Test Ring"}}
        assigns(:ring).should eq(ring)
      end

      it "redirects to the ring" do
        ring = FactoryGirl.create(:ring)
        put :update, {:id => ring.to_param, :ring => {name: "Test Ring"}}
        response.should redirect_to(ring)
      end
    end

    describe "with invalid params" do
      it "assigns the ring as @ring" do
       ring = FactoryGirl.create(:ring)
        # Trigger the behavior that occurs when invalid params are submitted
        Ring.any_instance.stub(:save).and_return(false)
        put :update, {:id => ring.id, :ring => {}}
        assigns(:ring).should eq(ring)
      end

      it "re-renders the 'edit' template" do
        ring = FactoryGirl.create(:ring)
        # Trigger the behavior that occurs when invalid params are submitted
        Ring.any_instance.stub(:save).and_return(false)
        put :update, {:id => ring.id, :ring => {}}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ring" do
      ring = FactoryGirl.create(:ring)
      expect {
        delete :destroy, {:id => ring.id}
      }.to change(Ring, :count).by(-1)
    end

    it "redirects to the rings list" do
      ring = FactoryGirl.create(:ring)
      delete :destroy, {:id => ring.id}
      response.should redirect_to(rings_url)
    end
  end

end
