class EstadoDocumento < ActiveRecord::Base
  include Utilidades

  #attr_accessible :descripcion

  has_many :documentos, :dependent => :restrict

  validates :descripcion, :length => { :in => 1..20 }, :uniqueness => true

  before_validation do |estadoDocumento|
    eliminar_acentos!(estadoDocumento.descripcion).upcase!
  end
end
