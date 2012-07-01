require 'spec_helper'

describe ManufacturerList do

  let(:manufacturer) { FactoryGirl.create(:manufacturer) }

  it { should respond_to(:product_id) }
  it { should respond_to(:manufacturer_id) }
  it { should be_kind_of ManufacturerList }
  it { should validate_presence_of(:product_id) }
  it { should validate_presence_of(:manufacturer_id) }
end

# == Schema Information
#
# Table name: manufacturer_lists
#
#  id              :integer         not null, primary key
#  product_id      :integer
#  manufacturer_id :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

