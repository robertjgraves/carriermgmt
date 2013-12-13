class Rate < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :origin_destination_pair
end
