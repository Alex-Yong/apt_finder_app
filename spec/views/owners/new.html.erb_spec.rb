require 'rails_helper'

RSpec.describe "owners/new", type: :view do
  before(:each) do
    assign(:owner, Owner.new(
      :name => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new owner form" do
    render

    assert_select "form[action=?][method=?]", owners_path, "post" do

      assert_select "input#owner_name[name=?]", "owner[name]"

      assert_select "input#owner_phone[name=?]", "owner[phone]"
    end
  end
end
