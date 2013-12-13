module OriginDestinationPairsHelper
	def origin_to_destination(pair)
		pair.location.name + " to " + pair.destination.name
	end


end
