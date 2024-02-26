class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new # Needed to instantiate the form_with
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to pet_path(@pet)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    # No need for apets/update.html.erb
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to pets_path, status: :see_other
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :address, :found_on)
  end
end
