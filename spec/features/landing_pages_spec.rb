require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'going to website' do
    Steps 'being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Listing")
      end
    end
  end
end
