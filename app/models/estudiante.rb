class Estudiante < ActiveRecord::Base

  # 10 estudiantes por pagina (will_paginate setting)
  self.per_page = 10

  attr_accessible :eficiencia, :promedio_general, :promedio_ponderado, :persona_id, :escuela_id, :grado_id, :mencion_id, :premio_id, :persona
  belongs_to :escuela
  belongs_to :grado
  belongs_to :persona
  belongs_to :mencion
  belongs_to :premio

  validates :escuela_id,
            :grado_id,
            :presence => true

  validates :persona_id, :presence => { :message => "no esta registrada" }

  validates :persona_id, 
            :uniqueness => { :scope => :escuela_id,
                             :message => "ya es un estudiante de pregrado registrado" },
            :if => "grado.id == 1"

  validates :promedio_general,
            :promedio_ponderado, 
            :numericality => {:greater_than => 0, :less_than_or_equal_to => 20}

  validates :eficiencia,
            :numericality => {:greater_than => 0, :less_than_or_equal_to => 1}

  # validar la nota y la eficiencia si el estudiante recibe premio
  # El promedio ponderado <= promedio general??
  # Dada una escuela, filtrar las menciones
end
