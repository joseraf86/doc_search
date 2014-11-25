class Persona < ActiveRecord::Base
  include Utilidades

  # 10 personas por pagina (will_paginate setting)
  self.per_page = 10
  
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  
  attr_accessible :apellidos, :cedula, :email, :nombre_completo, :nombres

  has_many :estudiantes, :dependent => :destroy

  has_many :autors
  has_many :documentos_autor, :through => :autors, :source => :documento, :dependent => :restrict

  has_many :tutors
  has_many :documentos_tutor, :through => :tutors, :source => :documento, :dependent => :restrict

  has_many :jurados
  has_many :documentos_jurado, :through => :jurados, :source => :documento, :dependent => :restrict

  validates :cedula, :format => { :with => /\A\d+\z/, :message => "debe ser numeros" },
                     :uniqueness => true, :length => { :in => 1..10 }

  validates :nombres, :apellidos, :nombre_completo, :length => { :in => 1..101 }

  validates :nombre_completo, :uniqueness => true

  validates :email, :format => { :with => EMAIL_REGEX,
                                 :message => "no es valido" }

  before_validation do |persona|
    eliminar_acentos!(persona.nombres).upcase!
    eliminar_acentos!(persona.apellidos).upcase!
    eliminar_acentos!(persona.nombre_completo).upcase!
    eliminar_acentos!(persona.email).upcase!
  end
end
