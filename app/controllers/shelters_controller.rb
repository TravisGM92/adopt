class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def new

  end

  def create
    shelter = Shelter.create!({
      name: params[:shelter][:name],
      address: params[:shelter][:address],
      city: params[:shelter][:city],
      state: params[:shelter][:state],
      zip: params[:shelter][:zip]
    })

    redirect_to '/shelters'
  end

  def show
    @shelter = Shelter.find(params[:shelter_id])
  end

  def edit
    @shelter = Shelter.find(params[:shelter_id])
  end

  def update
    shelter = Shelter.find(params[:shelter_id])
    shelter.update({
      name: params[:shelter][:name],
      address: params[:shelter][:address],
      city: params[:shelter][:city],
      state: params[:shelter][:state],
      zip: params[:shelter][:zip]
      })

    shelter.save

    redirect_to "/shelters/#{shelter.id}"
  end

  def destroy
    Shelter.destroy(params[:shelter_id])
    redirect_to '/shelters'
  end


  private
  def shelter_params
    params.permit(:name, :address, :city, :state, :zip)
  end

end
