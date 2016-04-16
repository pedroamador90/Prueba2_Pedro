class Inventario < ActiveRecord::Base
	has_one :operacion, dependent: :destroy
	#before_destroy :callbackinv

	scope :noutilizadas, -> { joins(:operacion).where("operacion.operacion_id not in (select operacion_id from inventario") }

	#def setup
	#	@Registros = New.Registros
	#end

	before_destroy do
	  	Registro.create descripcion:"La pieza con serial #{self.serie} ha sido borrada"
	end

	#scope :primeroperador, -> Inventario.count 

	#def callback

	#	Registros = @Registros.new(:desripcion => "La pieza con serial #{self.serie} ha sido borrada")
	#   Registros.create
	#end

end
