class Inventario < ActiveRecord::Base
	has_one :operacion
	#scope :primeroperador, -> Inventario.count 
end
