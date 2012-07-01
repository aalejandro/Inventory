require 'spec_helper'

describe Manufacturer do
  let(:manufacturer) { FactoryGirl.create(:manufacturer) }

  # Ring Class
  it { should respond_to(:name) }
  it { should be_kind_of Manufacturer }

  context "on save" do
    it 'should return ActiveRecord::RecordInvalid if invalid attributes' do
      bad_manufacturer = FactoryGirl.build(:manufacturer, name: "")
      expect { bad_manufacturer.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'changes the number of Rings' do
      manufacturer = FactoryGirl.build(:manufacturer)
      expect { manufacturer.save }.to change { Manufacturer.count }.by(1)
    end
  end
end

# == Schema Information
#
# Table name: manufacturers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

