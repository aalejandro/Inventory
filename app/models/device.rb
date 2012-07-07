class Device < ActiveRecord::Base

  KINDS = %w(aggregation ring node access)

  attr_accessible :name, :kind, :product_id, :site_id

  # Model Relationships
  belongs_to :product
  belongs_to :site

  # Model Validations
  validates_presence_of :name, :product_id, :site_id
  validates :kind, inclusion: { in: KINDS, message: "%{value} is not a valid" }
end
