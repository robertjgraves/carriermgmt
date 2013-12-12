class LocationsController < ApplicationController
	def new
		@location = Location.new
	end

	def create
		@location = Location.new(post_params)
		if @location.save
			redirect_to @location
		else
			render 'new'
		end
	end

	def show
		@location = Location.find(params[:id])
	end

	def index
		@locations = Location.order(:name).all
	end

	def edit
		@location = Location.find(params[:id])
	end

	def update
		@location = Location.find(params[:id])

		if @location.update(params[:location].permit(:name, :city, :state))
			redirect_to @location
		else
			render 'edit'
		end
	end

	def destroy
		@location = Location.find(params[:id])
		@location.destroy

		redirect_to locations_path
	end

	private
		def post_params
			params.require(:location).permit(:name, :city, :state)
		end
end
