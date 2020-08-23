require 'rails_helper'

RSpec.describe 'Shelters show page' do
  before :each do
    @shelter_1 = Shelter.create(name:       "Dave's Barn",
                         address:      '208 South Yup Street',
                         city:  'LakeSmall',
                        state: 'CO',
                        zip: 87663)
    @shelter_2 = Shelter.create(name:       "Pups & Catz",
                         address:      '2081 North Nope Road',
                         city:  'Aurora',
                        state: 'NY',
                        zip: 11890)
  end
  describe 'As a visitor' do
    describe 'When I visit the new shelters form by clicking a link on the index' do
      it 'I can create a new shelter' do
        visit "/"

        click_link "New Shelter"

        expect(current_path).to eq('/shelters/new')

        fill_in :name, with: "Dave's Barn"
        fill_in :address, with: "208 South Yup Street"
        fill_in :city, with: "LakeSmall"
        fill_in :state, with: "CO"
        fill_in :zip, with: 87663

        click_on "submit"

        expect(current_path).to eq("/shelters")
        expect(page).to have_content("Dave's Barn")
      end
    end
  end
end
