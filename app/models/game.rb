class Game < ActiveRecord::Base
	has_many :MafiaGames

	validates :title, :capacity, presence: true
	validates :capacity, :code, numericality: {only_integer: true}
end
