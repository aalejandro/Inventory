require 'spec_helper'

describe Product do
  let(:product) { FactoryGirl.create(:product) }

  it { should validate_presence_of(:name) }
  it { should have_many(:manufacturer_lists).dependent(:destroy) }
  it { should have_many(:manufacturers)}
  it { should respond_to(:name) }
  it { should respond_to(:manufacturer_ids) }
  it { should be_kind_of Product }
end

# == Schema Information
#
# Table name: products
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

