class Inventario < ActiveRecord::Base
	has_one :operacion, dependent: :destroy

	#scope :primeroperador, -> Inventario.count 
end
