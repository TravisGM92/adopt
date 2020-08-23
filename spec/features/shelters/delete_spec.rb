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
        describe 'When I visit a shelter show page' do
          describe 'Then I see a link to delete the shelter' do
            describe 'When I click the link "Delete Shelter"' do
              it "Then a 'DELETE' request is sent to '/shelters/:id',
                  the shelter is deleted," do

                visit "/shelters/#{@shelter_1.id}"

                click_on "delete"

                expect(current_path).to eq("/shelters")

                expect(page).to have_no_content("George's New Place")
              end
            end
          end
        end
      end
    end
