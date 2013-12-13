class Carrier < ActiveRecord::Base
	validates :name, presence: true
	has_many :rates
end
