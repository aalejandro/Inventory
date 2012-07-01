class Ring < ActiveRecord::Base

  attr_accessible :name, :number
  validates_presence_of :name, :number

  #Model Relationships
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

