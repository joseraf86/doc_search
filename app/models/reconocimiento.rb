class Reconocimiento < ActiveRecord::Base
  include Utilidades

  attr_accessible :descripcion

  has_and_belongs_to_many :documentos

  validates :descripcion, :length => { :in => 1..100 }, :uniqueness => true

  before_validation do |reconocimiento|
    eliminar_acentos!(reconocimiento.descripcion).upcase!
  end
end
