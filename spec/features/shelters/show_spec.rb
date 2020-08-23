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

  describe 'it even more' do
    it "I see a specific shelter's info" do
      visit "/shelters/#{@shelter_1.id}"

      expect(page).to have_content(@shelter_1.name)
    end

    it "I see a specific shelter's info" do
      visit "/shelters/#{@shelter_2.id}"

      expect(page).to have_content(@shelter_2.name)
    end

    # it "I see a 'update' button'" do
    #   visit "/shelters/#{@shelter_2.id}"
    #
    #   click_on 'Update'
    #   expect(current_path).to eq("/shelters/#{@shelter_2.id}/edit")
    # end
  end #create tests for buttons 'update', 'delete'
end
