class RingList < ActiveRecord::Base

  attr_accessible :site_id, :ring_id, :member_number

  # Model Relationships
  belongs_to :site
  belongs_to :ring

  # Model Validations
  validates_presence_of :site_id, :ring_id
end

# == Schema Information
#
# Table name: ring_lists
#
#  id            :integer         not null, primary key
#  site_id       :integer
#  ring_id       :integer
#  member_number :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

