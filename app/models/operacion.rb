class Operacion < ActiveRecord::Base
  belongs_to :trabajador
  belongs_to :inventario
end
