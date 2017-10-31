class Tenant < ActiveRecord::Base
  has_many :leases
end
