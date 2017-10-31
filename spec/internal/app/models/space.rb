class Space < ActiveRecord::Base
  belongs_to :floor

  has_many :targeted_by, class_name: 'right'
end
