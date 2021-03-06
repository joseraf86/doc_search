class TipoDocumento < ActiveRecord::Base
  include Utilidades

  attr_accessible :descripcion, :descripcion_corta

  has_many :documentos, :dependent => :restrict

  validates :descripcion, :length => { :in => 1..100 }, 
            :uniqueness => true

  validates :descripcion_corta, :length => { :in => 1..12 },
            :uniqueness => true

  validate :descripcion_corta_distinta_de_descripcion

  validate :descripcion_distinta_de_descripcion_corta

  def descripcion_corta_distinta_de_descripcion
    TipoDocumento.all.each do |tipoDocumento|
      if tipoDocumento.descripcion == descripcion_corta
        errors.add(:descripcion_corta, "ya hay otro tipo de documento con esa descripcion")
      end#if
    end#do
  end#def

  def descripcion_distinta_de_descripcion_corta
    TipoDocumento.all.each do |tipoDocumento|
      if tipoDocumento.descripcion_corta == descripcion
        errors.add(:descripcion, "ya hay otro tipo de documento con esa descripcion corta")
      end#if
    end#do
  end#def

  before_validation do |tipoDocumento|
    eliminar_acentos!(tipoDocumento.descripcion).upcase!
    eliminar_acentos!(tipoDocumento.descripcion_corta).upcase!
  end
end
