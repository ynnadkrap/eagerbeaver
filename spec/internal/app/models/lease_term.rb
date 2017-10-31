class LeaseTerm < ActiveRecord::Base
  belongs_to :lease

  has_many :space_lease_terms
  has_many :spaces, through: :space_lease_terms
end
