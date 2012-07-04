class RingList < ActiveRecord::Base

  attr_accessible :site_id, :ring_id, :member_number

  # Model Relationships
  belongs_to :site
  belongs_to :ring

  # Model Validations
  validates_presence_of :site_id, :ring_id
end
