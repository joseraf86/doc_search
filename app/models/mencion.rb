class Mencion < ActiveRecord::Base
  include Utilidades

  # 10 menciones por pagina (will_paginate setting)
  self.per_page = 10

  attr_accessible :descripcion, :escuela_id

  belongs_to :escuela

  has_many :estudiantes, :dependent => :restrict

  validates :descripcion, :length => { :in => 1..100 }, :uniqueness => { scope: :escuela_id }

  validates :escuela_id, :presence => true

  before_validation do |mencion|
    eliminar_acentos!(mencion.descripcion).upcase!
  end
end
