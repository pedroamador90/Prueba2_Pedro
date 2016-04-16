class Operacion < ActiveRecord::Base
  belongs_to :trabajador
  belongs_to :inventario

  scope :ultimos5, -> {limit 5}
  scope :operacionesultimodia, -> {where('created_at >= ?', Date.today-1.day)} #al día de ayer, mayor igual porque guardamos hora
end
