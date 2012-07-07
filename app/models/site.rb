class Site < ActiveRecord::Base

  attr_accessible :name, :open_mobile_site_id, :direction, :ring_ids

  # Model Relationships
  has_many :ring_lists, dependent: :destroy
  has_many :rings, through: :ring_lists

  has_many :devices
  has_many :products, through: :devices

  # Model Validations
  validates_presence_of :name
  validates :direction, inclusion: { in: %w(west east),
    message: "%{value} is not a valid" }, allow_nil: true
  validates :open_mobile_site_id, numericality: { greater_than: 0, less_than_or_equal_to: 1000 }
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

