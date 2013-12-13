class RatesController < ApplicationController
	def index
		@rates = Rate.all
	end

	def show
		@rate = Rate.find(params[:id])
	end

	def new
		@rate = Rate.new
		@carriers = Carrier.order(:name).all
		@origin_destination_pairs = OriginDestinationPair.all
	end

	def create
		@rate = Rate.new(post_params)
		if @rate.save
			redirect_to @rate
		else
			render 'new'
		end
	end

	private 
		def post_params
			params.require(:rate).permit(:carrier_id, :origin_destination_pair_id, :rate, :surcharge, :effective_date)
		end
end
