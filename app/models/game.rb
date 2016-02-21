class Game < ActiveRecord::Base
	belongs_to :user
	has_one :mafiagame

	validates :title, :capacity, presence: true
	validates :capacity, :code, numericality: {only_integer: true}
end
