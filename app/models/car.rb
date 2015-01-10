class Car < ActiveRecord::Base
	validates :year, presence: true, length: {minimum:2}

	validates :brand, presence:true
	
	validates :model, presence: true

	validates :km, presence: true

	validates :value, presence: true 

end
