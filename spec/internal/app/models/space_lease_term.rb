class SpaceLeaseTerm < ActiveRecord::Base
  belongs_to :lease_term
  belongs_to :space
end
