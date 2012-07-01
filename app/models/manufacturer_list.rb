class ManufacturerList < ActiveRecord::Base

  attr_accessible :product_id, :manufacturer_id

  # Model Relationships
  belongs_to :product
  belongs_to :manufacturer

  # Model Validations
  validates_presence_of :product_id, :manufacturer_id
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

