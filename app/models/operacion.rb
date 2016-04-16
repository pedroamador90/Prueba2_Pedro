class Operacion < ActiveRecord::Base
  belongs_to :trabajador
  belongs_to :inventario

  scope :ultimos5, -> {limit 5}
  scope :operacionesultimodia, -> {where('created_at >= ?', Date.today-1.day)} #al día de ayer, mayor igual porque guardamos hora

  #before_destroy :callback	


	before_destroy do
	  	Registro.create descripcion:"La operación con referencia a la pieza #{self.inventario.num_serie} y al usuario id #{self.trabajador.id} nombre: #{self.trabajador.nombre} ha sido borrada"
	end


end
