class Po < ActiveRecord::Base
  has_many :contact
  has_many :vehicle
  has_many :inspection
  has_many :rentals
end
