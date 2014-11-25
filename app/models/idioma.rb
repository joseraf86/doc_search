class Idioma < ActiveRecord::Base
  include Utilidades

  attr_accessible :codigo, :descripcion

  has_many :documentos, :dependent => :restrict

  validates :descripcion, :length => { :in => 1..25 }, :uniqueness => true

  validates :codigo, :format => { :with => /\A[a-z]{2}\z/, :codigo => "no es un valor ISO 639-1 valido" }, :uniqueness => true

  before_validation do |idioma|
    eliminar_acentos!(idioma.descripcion).upcase!
  end
end
