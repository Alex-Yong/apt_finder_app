require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :street => "Street",
        :city => "City",
        :postal_code => 2.5,
        :state => "State",
        :country => "Country",
        :owner => nil
      ),
      Apartment.create!(
        :street => "Street",
        :city => "City",
        :postal_code => 2.5,
        :state => "State",
        :country => "Country",
        :owner => nil
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
