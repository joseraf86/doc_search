class Contenido < ActiveRecord::Base
  belongs_to :documento
  attr_accessible :texto
end
