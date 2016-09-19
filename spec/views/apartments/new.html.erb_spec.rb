require 'rails_helper'

RSpec.describe "apartments/new", type: :view do
  before(:each) do
    assign(:apartment, Apartment.new(
      :street => "MyString",
      :city => "MyString",
      :postal_code => 1.5,
      :state => "MyString",
      :country => "MyString",
      :owner => nil
    ))
  end

  it "renders new apartment form" do
    render

    assert_select "form[action=?][method=?]", apartments_path, "post" do

      assert_select "input#apartment_street[name=?]", "apartment[street]"

      assert_select "input#apartment_city[name=?]", "apartment[city]"

      assert_select "input#apartment_postal_code[name=?]", "apartment[postal_code]"

      assert_select "input#apartment_state[name=?]", "apartment[state]"

      assert_select "input#apartment_country[name=?]", "apartment[country]"

      assert_select "input#apartment_owner_id[name=?]", "apartment[owner_id]"
    end
  end
end
