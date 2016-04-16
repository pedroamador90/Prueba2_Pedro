class Trabajador < ActiveRecord::Base
	validates :nombre, presence: true
end
