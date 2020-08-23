require 'rails_helper'

RSpec.describe 'pets index page' do
  before :each do
    @shelter_1 = Shelter.create!(name:       "Dave's Barn",
                         address:      '208 South Yup Street',
                         city:  'LakeSmall',
                        state: 'CO',
                        zip: 87663)

    @pet_1 = Pet.create!(image:       "Dave's Barn",
                         name:      '208 South Yup Street',
                         sex:  'LakeSmall',
                        shelter: 'CO', approximate_age: 3,
                        adoptable: 87663, shelter: @shelter_1)
    @pet_2 = Pet.create!(image:       "Pups & Catz",
                         name:      '2081 North Nope Road',
                         sex:  'Aurora',
                        shelter: 'NY', approximate_age: 8,
                        adoptable: 11890, shelter: @shelter_1)
  end

  describe 'it in more details' do
    describe 'it even more' do
      it "I see each pet's name" do
        visit '/pets'

        expect(page).to have_content(@pet_1.name)
        expect(page).to have_content(@pet_2.name)
      end
      #
      # it 'I see the street address' do
      #   visit '/pets'
      #
      #   expect(page).to have_content(@pet_1.address)
      #   expect(page).to have_content(@pet_2.address)
      # end
      #
      # it 'I see the city' do
      #   visit '/pets'
      #
      #   expect(page).to have_content(@pet_1.city)
      #   expect(page).to have_content(@pet_2.city)
      # end
      #
      # it 'I see the state' do
      #   visit '/pets'
      #
      #   expect(page).to have_content(@pet_1.state)
      #   expect(page).to have_content(@pet_2.state)
      # end
      #
      # it 'I see the zip' do
      #   visit '/pets'
      #
      #   expect(page).to have_content(@pet_1.zip)
      #   expect(page).to have_content(@pet_2.zip)
      # end
    end
  end
end
