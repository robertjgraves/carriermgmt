class OriginDestinationPair < ActiveRecord::Base
	belongs_to :location
	belongs_to :destination, class_name: 'Location', foreign_key: 'destination_id'
end
