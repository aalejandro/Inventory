class Manufacturer < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
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

