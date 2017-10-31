class Property < ActiveRecord::Base
  belongs_to :office_park
  belongs_to :account

  has_many :floors
end
