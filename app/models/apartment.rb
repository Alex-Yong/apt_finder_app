class Apartment < ActiveRecord::Base
  belongs_to :owner


  def full_address
    @street = street
    @city = city
    @full_address = (@street +" "+@city)
  end

  geocoded_by :full_address
  after_validation :geocode

  # validates :street, length: {minimum:1}
  # validates :postal_code, length: {minimum:5}
  # validates :state, length: {minimum:2}
  # validates :country, length: {minimum:1}


end
