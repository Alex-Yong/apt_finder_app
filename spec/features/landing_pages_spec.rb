require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'going to website' do
    Steps 'being welcomed' do
      Given 'I am on the apartments page' do
        visit '/apartments'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Listing")
      end
    end

    Steps 'entering apartment' do
      Given 'I have an owner called Alex' do
        visit '/'
        click_link 'New Owner'
        fill_in 'owner_name', with: 'Alex'
        click_button 'Create Owner'
      end
      And 'I am on apartments page' do
        visit '/apartments'
      end
      Then 'I click on new apartment' do
        expect(page).to have_content("New Apartment")
        click_link 'New Apartment'
      end
      Then 'Fill in some forms' do
        fill_in 'apartment_street', with: '123 Test'
        fill_in 'apartment_postal_code', with: '12333'
        fill_in 'apartment_state', with: 'CA'
        fill_in 'apartment_country', with:'USA'
        fill_in 'apartment_city', with: 'San Diego'
      end
      Then 'click the submit button' do
        click_button 'Create Apartment'
        expect(page).to have_content("Owner: Alex")
      end
    end
  end
end
