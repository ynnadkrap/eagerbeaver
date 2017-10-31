class Floor < ActiveRecord::Base
  belongs_to :property

  has_many :right_targets, class_name: 'right'
end
