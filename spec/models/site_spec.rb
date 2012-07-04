require 'spec_helper'

describe Site do
    let(:site) { FactoryGirl.create(:site) }

  # Site Class
  it { should respond_to(:name) }
  it { should respond_to(:open_mobile_site_id) }
  it { should respond_to(:direction) }
  it { should respond_to(:ring_ids) }
  it { should be_kind_of Site }

  context "on save" do
    it 'should return ActiveRecord::RecordInvalid if invalid attributes' do
      bad_site = FactoryGirl.build(:site, direction: "north")
      expect { bad_site.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'changes the number of Sites' do
      site = FactoryGirl.build(:site)
      expect { site.save }.to change { Site.count }.by(1)
    end
  end
end

# == Schema Information
#
# Table name: sites
#
#  id                  :integer         not null, primary key
#  name                :string(255)
#  open_mobile_site_id :integer
#  direction           :string(255)
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#

