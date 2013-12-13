class Location < ActiveRecord::Base
	
	validates :name, presence: true
	has_many :origin_destination_pairs, :order => 'name DESC'
end
