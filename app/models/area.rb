class Area < ActiveRecord::Base
  include Utilidades

  # 10 areas por pagina (will_paginate setting)
  self.per_page = 10

  attr_accessible :descripcion, :escuela_id

  belongs_to :escuela

  has_and_belongs_to_many :documentos

  validates :escuela_id, :presence => true

  validates :descripcion, :length => { :in => 1..100 }, :uniqueness => true

  before_validation do |area|
    eliminar_acentos!(area.descripcion).upcase!
  end
end
