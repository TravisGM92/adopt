require 'rails_helper'

RSpec.describe 'Shelters index page' do
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

  describe 'it in more details' do
    describe 'it even more' do
      it "I see each shelter's name" do
        visit '/shelters'

        expect(page).to have_content(@shelter_1.name)
        expect(page).to have_content(@shelter_2.name)
      end

      it 'I see the street address' do
        visit '/shelters'

        expect(page).to have_content(@shelter_1.address)
        expect(page).to have_content(@shelter_2.address)
      end

      it 'I see the city' do
        visit '/shelters'

        expect(page).to have_content(@shelter_1.city)
        expect(page).to have_content(@shelter_2.city)
      end

      it 'I see the state' do
        visit '/shelters'

        expect(page).to have_content(@shelter_1.state)
        expect(page).to have_content(@shelter_2.state)
      end

      it 'I see the zip' do
        visit '/shelters'

        expect(page).to have_content(@shelter_1.zip)
        expect(page).to have_content(@shelter_2.zip)
      end
    end
  end
end
