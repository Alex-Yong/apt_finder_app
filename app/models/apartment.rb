class Apartment < ActiveRecord::Base
  belongs_to :owner


  def full_address
    @street = street
    @city = city
    @state = state
    @postal_code = postal_code
    @country = country
    @full_address = (@street +" "+@city+ " "+@state+" "+@country)
  end

  geocoded_by :full_address
  after_validation :geocode

  # validates :street, length: {minimum:1}
  # validates :postal_code, length: {minimum:5}
  # validates :state, length: {minimum:2}
  # validates :country, length: {minimum:1}


end
