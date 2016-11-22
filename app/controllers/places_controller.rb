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
		@new_place = Goal.create(place_params)

		if @new_place.save
			redirect_to @new_place
		else
			render :new
		end
	end

	def destroy
	end

	private

	def place_params
		params.require(:place).permits(:name, :adress, :phone, :photo)
	end

end
