class Grado < ActiveRecord::Base
  include Utilidades

  #attr_accessible :descripcion

  has_many :estudiantes, :dependent => :restrict

  validates :descripcion, :length => { :in => 1..20 }, :uniqueness => true

  before_validation do |grado|
    eliminar_acentos!(grado.descripcion).upcase!
  end
end