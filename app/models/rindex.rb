class Rindex < ActiveRecord::Base
  belongs_to :documento
  belongs_to :termino
  validates  :ocurrencia,
             :documento_id,
             :termino_id, 
             :presence => true
  attr_accessible :ocurrencia, :documento_id, :termino_id
end
