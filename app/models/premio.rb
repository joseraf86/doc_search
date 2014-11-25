class Premio < ActiveRecord::Base
  include Utilidades

  attr_accessible :descripcion

  has_many :estudiantes, :dependent => :restrict

  validates :descripcion, :length => { :in => 1..100 }, :uniqueness => true

  before_validation do |premio|
    eliminar_acentos!(premio.descripcion).upcase!
  end
end
