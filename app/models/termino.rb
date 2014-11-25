class Termino < ActiveRecord::Base

  attr_accessible :descripcion, :idioma_id

  ## ASOCIACIONES ##

  belongs_to :idioma

  # Indice Invertido:
  # Contenido       cindices
  # Titulo          tindices
  # Resumen         rindices
  # Palabras clave  clindices
  #
  has_many :cindices, :dependent => :destroy
  has_many :documentos_contenido, :through => :cindices, :source=> :documento

  has_many :tindices, :dependent => :destroy
  has_many :documentos_titulo, :through => :tindices, :source=> :documento

  has_many :rindices, :dependent => :destroy
  has_many :documentos_resumen, :through => :rindices, :source=> :documento

  has_many :clindices, :dependent => :destroy
  has_many :documentos_palabras_clave, :through => :clindices, :source=> :documento

  ## VALIDACIONES ##

  validates :idioma_id,
            :presence => true

  validates :descripcion, :uniqueness => { :scope => :idioma_id, :message => "ya esta indexado en la tabla Termino"},
                          :length => { :in => 1..255 } 

  ## METODOS ##

  # Permite saber si un termino esta asociado
  # a algun documento en su titulo, contenido
  # resumen y palabras clave
  #
  def esta_indexado?
    return self.documentos_titulo.any?        ||
           self.documentos_contenido.any?     || 
           self.documentos_resumen.any?       || 
           self.documentos_palabras_clave.any?
  end#def

  # Dado un termino imprime en que documentos ocurre
  # y el lugar donde ocurre: titulo, contenido, resumen, 
  # y palabras clave
  #
  def imprimir_ocurrencia
    if self.esta_indexado?
      puts "termino_id:#{self.id} #{self.descripcion} esta indexado en:\n"
      self.documentos_titulo.each do |documento| 
        puts "documento_id:#{documento.id} titulo: #{documento.titulo} \n"
      end#do
      self.documentos_contenido.each do |documento|
        puts "documento_id:#{documento.id} contenido \n"
      end#do
      self.documentos_resumen.each do |documento| 
        puts "documento_id:#{documento.id} resumen: #{documento.resumen}\n"
      end#do
      self.documentos_palabras_clave.each do |documento| 
      puts "documento_id:#{documento.id} palabras_clave: #{documento.palabras_clave}\n"
      end#do
    else
      puts "termino_id:#{self.id} #{self.descripcion} no esta indexado\n"
    end#if
  end#def

  ## TAREAS NO INTERACTIVAS ##

  # Eliminar todos los terminos no asociados
  # a al menos un documento
  #
  def self.limpiar_terminos
    puts "ESTADO     ID DESCRIPCION"
    Termino.all.each do |termino|
      unless termino.esta_indexado?
        termino.destroy
        puts "DESTRUIDO  #{termino.id}  #{termino.descripcion}"
      else
        puts "CONSERVADO #{termino.id}  #{termino.descripcion}"
        #termino.imprimir_ocurrencia
      end#unless
    end#do
  end#def

end
