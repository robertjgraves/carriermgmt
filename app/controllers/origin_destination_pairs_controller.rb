class OriginDestinationPairsController < ApplicationController
	def index
		@origin_destination_pairs = OriginDestinationPair.all
	end
end
