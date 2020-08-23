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
          describe 'Then I see a link to update the shelter "Update Shelter"' do
            describe 'When I click the link "Update Shelter"' do
              it "Then I am taken to '/shelters/:id/edit'" do

                visit "/shelters/#{@shelter_1.id}"

                click_link "Update"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")

                fill_in 'shelter[name]', with: "George's New Place"

                click_on "submit"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}")
                expect(page).to have_content("George's New Place")
              end

              it "Then I am taken to '/shelters/:id/edit'" do

                visit "/shelters/#{@shelter_1.id}"

                click_link "Update"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")

                fill_in 'shelter[address]', with: "222 N Nope Ave"

                click_on "submit"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}")
                expect(page).to have_content("222 N Nope Ave")
              end


              it "Then I am taken to '/shelters/:id/edit'" do

                visit "/shelters/#{@shelter_1.id}"

                click_link "Update"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")

                fill_in 'shelter[city]', with: "Aurora"

                click_on "submit"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}")
                expect(page).to have_content("Aurora")
              end
              it "Then I am taken to '/shelters/:id/edit'" do

                visit "/shelters/#{@shelter_1.id}"

                click_link "Update"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")

                fill_in 'shelter[state]', with: "HI"

                click_on "submit"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}")
                expect(page).to have_content("HI")
              end

              it "Then I am taken to '/shelters/:id/edit'" do

                visit "/shelters/#{@shelter_1.id}"

                click_link "Update"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")

                fill_in 'shelter[zip]', with: 16544

                click_on "submit"

                expect(current_path).to eq("/shelters/#{@shelter_1.id}")
                expect(page).to have_content(16544)
              end
            end
          end
        end
      end
    end
