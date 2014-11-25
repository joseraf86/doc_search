class Escuela < ActiveRecord::Base
  include Utilidades

  #attr_accessible :descripcion

  has_many :documentos, :dependent => :restrict

  has_many :estudiantes, :dependent => :restrict

  validates :descripcion, :length => { :in => 1..20 }, :uniqueness => true

  before_validation do |escuela|
    eliminar_acentos!(escuela.descripcion).upcase!
  end
end
