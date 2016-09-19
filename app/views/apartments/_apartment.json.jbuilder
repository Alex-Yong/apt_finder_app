json.extract! apartment, :id, :street, :city, :postal_code, :state, :country, :owner_id, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)