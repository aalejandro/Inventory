require 'spec_helper'

describe Ring do
  let(:ring) { FactoryGirl.create(:ring) }

  # Ring Class
  it { should respond_to(:name) }
  it { should respond_to(:number) }
  it { should be_kind_of Ring }

  context "on save" do
    it 'should return ActiveRecord::RecordInvalid if invalid attributes' do
      bad_ring = FactoryGirl.build(:ring, name: "")
      expect { bad_ring.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'changes the number of Rings' do
      ring = FactoryGirl.build(:ring)
      expect { ring.save }.to change { Ring.count }.by(1)
    end
  end
end

# == Schema Information
#
# Table name: rings
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  number     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

