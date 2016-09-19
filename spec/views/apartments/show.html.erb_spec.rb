require 'rails_helper'

RSpec.describe "apartments/show", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :street => "Street",
      :city => "City",
      :postal_code => 2.5,
      :state => "State",
      :country => "Country",
      :owner => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
  end
end
