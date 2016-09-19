class Apartment < ActiveRecord::Base
  belongs_to :owner

  validates :street, length: {minimum:1}
  validates :postal_code, length: {minimum:5}
  validates :state, length: {minimum:2}
  validates :country, length: {minimum:1}


end
