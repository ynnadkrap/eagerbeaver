class Right < ActiveRecord::Base
  belongs_to :space
  belongs_to :floor

  has_many :lease_terms
end
