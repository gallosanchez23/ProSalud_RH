class PlacesController < ApplicationController

	def index
		params[:q] ||= {}
  	@q = Place.ransack(params[:q])
  	@places = @q.result(distinct: true)
	end

	def new
		@new_place = Place.new
	end

	def create
		@new_place = Place.create(place_params)

		if @new_place.save
			redirect_to places_path
		else
			render :new
		end
	end

	def destroy
		@place = Place.find(params[:id])
		@place.destroy
		redirect_to places_path
	end

	def edit
		@place = Place.find(params[:id])
	end

	def update
		@place = Place.find(params[:id])
		@place.update_attributes(place_params)
		redirect_to places_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :adress, :phone, :photo)
	end

end
