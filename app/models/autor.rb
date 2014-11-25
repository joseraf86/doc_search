class Autor < ActiveRecord::Base
  belongs_to :persona
  belongs_to :documento
  validates  :persona_id, :documento_id, :presence => true
  attr_accessible :persona_id
end
