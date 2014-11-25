class AdminController < ApplicationController
  # Filtro Devise para exigir la autenticacion del usuario
  # antes de ejecutar cualquier accion del controlador
  #
  before_filter :authenticate_usuario!, :except => [:datos_documento, :descargar, :crear_teg_desde_conest, :guardar_archivo_conest]

  #def index
  #end

end
