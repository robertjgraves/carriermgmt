class OriginDestinationPair < ActiveRecord::Base
	belongs_to :location, class_name: "Location", foreign_key: "origin_id"
	belongs_to :destination, class_name: "Location", foreign_key: "destination_id"
	# belongs_to :destination, class_name: 'Location', foreign_key: 'destination_id'
	has_many :rates
end
