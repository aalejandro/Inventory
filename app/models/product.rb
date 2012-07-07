class Product < ActiveRecord::Base

  attr_accessible :name, :manufacturer_ids

  # Model Relationships
  has_many :manufacturer_lists, dependent: :destroy
  has_many :manufacturers, through: :manufacturer_lists

  has_many :devices
  has_many :sites, through: :devices

  # Model Validations
  validates_presence_of :name
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

