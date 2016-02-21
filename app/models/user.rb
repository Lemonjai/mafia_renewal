class User < ActiveRecord::Base
	has_secure_password

	has_one :game
	has_one :mafiagame, through: :game
end
