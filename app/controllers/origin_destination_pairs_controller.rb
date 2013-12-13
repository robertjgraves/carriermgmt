class OriginDestinationPairsController < ApplicationController
	def index
		@origin_destination_pairs = OriginDestinationPair.all
	end

	def show
		@origin_destination_pair = OriginDestinationPair.find(params[:id])
	end

	def new
		@origin_destination_pair = OriginDestinationPair.new
		@locations = Location.all
	end

	def create
		@origin_destination_pair = OriginDestinationPair.new(post_params)
		
		if @origin_destination_pair.save
			redirect_to @origin_destination_pair
		else
			render 'new'
		end
	end

	private
		def post_params
			params.require(:origin_destination_pair).permit(:origin_id, :destination_id)
		end
end
