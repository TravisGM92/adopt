class PetsController < ApplicationController
  def index
    @pets = Pet.all #this is what you make available in the view
  end

  def new
    @shelter_id = params[:shelter_id]
  end

  def show
    # require "pry"; binding.pry
    @shelter = Shelter.last
  end

  def create
    @pet = Pet.create!({
      name: params[:pet][:name],
      image: params[:pet][:image],
      approximate_age: params[:pet][:age],
      sex: params[:pet][:sex],
      adoptable: params[:pet][:adoptable],
      shelter: Shelter.last

      })
    redirect_to "/shelters/:shelter_id/pets"
  end

  private
  def pet_params
    params.permit(:image, :name, :approximate_age, :sex)
  end
end

#NEXT STEP!!!
#BUILD HTML INDEX PAGE FOR PETS!
