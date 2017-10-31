class Lease < ActiveRecord::Base
  has_many :lease_terms
  has_many :spaces, through: :lease_terms
  belongs_to :tenant
end
