class Car < ActiveRecord::Base
	scope :usados,    -> { where ("km > 0") }
	scope :novos,     -> { where ("km == 0 and value < 100000") }
	scope :luxos,     -> { where ("km == 0 and value >= 100000") }
	scope :destaques, -> { where ({featured: true}) }	
	
	validates_presence_of :brand, :model, :year, :km, :value, :fuel
  validates_numericality_of :year, :km, only_integer: true
  validates_numericality_of :km, greater_than_or_equal_to: 0
  validates_length_of :year, is: 4

	def second_hand?
		km > 0
	end

  def new_one?
    km == 0 && value < 100000
  end

  def luxury?
    km == 0 && value >= 100000
  end
end