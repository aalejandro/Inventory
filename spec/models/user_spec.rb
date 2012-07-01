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

# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#

