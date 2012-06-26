require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user) }

  before(:each) do
    @user1 = FactoryGirl.create(:user_mike)
    @user2 = FactoryGirl.build(:user_wrong_email)
  end

  # User Class
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should be_kind_of User }

  # User instance => let(:user) { FactoryGirl.create(:user) }
  its(:email) { should_not be_nil }

  context "on save" do
    it 'should not be valid without email' do
      expect { @user2.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'changes the number of Users' do
      user = FactoryGirl.build(:user_ash)
      expect { user.save }.to change { User.count }.by(1)
    end
  end
end
