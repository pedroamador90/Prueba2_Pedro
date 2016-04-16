	class Trabajador < ActiveRecord::Base
		validates :nombre, presence: true
		has_many :operacions, dependent: :destroy
	end
