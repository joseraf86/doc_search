# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130919211720) do

  create_table "area", :force => true do |t|
    t.string   "descripcion"
    t.integer  "escuela_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "area", ["escuela_id"], :name => "index_area_on_escuela_id"

  create_table "area_documento", :id => false, :force => true do |t|
    t.integer "area_id"
    t.integer "documento_id"
  end

  create_table "autor", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "documento_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "autor", ["documento_id"], :name => "index_autor_on_documento_id"
  add_index "autor", ["persona_id"], :name => "index_autor_on_persona_id"

  create_table "cindex", :force => true do |t|
    t.integer  "ocurrencia"
    t.integer  "documento_id"
    t.integer  "termino_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "cindex", ["documento_id"], :name => "index_cindex_on_documento_id"
  add_index "cindex", ["termino_id"], :name => "index_cindex_on_termino_id"

  create_table "clindex", :force => true do |t|
    t.integer  "ocurrencia"
    t.integer  "documento_id"
    t.integer  "termino_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "clindex", ["documento_id"], :name => "index_clindex_on_documento_id"
  add_index "clindex", ["termino_id"], :name => "index_clindex_on_termino_id"

  create_table "contenido", :force => true do |t|
    t.text     "texto",        :limit => 2147483647
    t.integer  "documento_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "contenido", ["documento_id"], :name => "index_contenido_on_documento_id"

  create_table "documento", :force => true do |t|
    t.text     "titulo",                   :limit => 2147483647
    t.text     "resumen",                  :limit => 16777215
    t.date     "fecha_publicacion"
    t.string   "palabras_clave"
    t.integer  "escuela_id"
    t.integer  "tipo_documento_id"
    t.integer  "estado_documento_id"
    t.integer  "idioma_id"
    t.integer  "visibilidad_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "publicacion_file_name"
    t.string   "publicacion_content_type"
    t.integer  "publicacion_file_size"
    t.datetime "publicacion_updated_at"
    t.integer  "calificacion"
    t.integer  "descargas"
    t.integer  "paginas"
    t.string   "estado"
    t.string   "titulo_texto_plano"
    t.string   "resumen_texto_plano"
  end

  add_index "documento", ["escuela_id"], :name => "index_documento_on_escuela_id"
  add_index "documento", ["estado_documento_id"], :name => "index_documento_on_estado_documento_id"
  add_index "documento", ["idioma_id"], :name => "index_documento_on_idioma_id"
  add_index "documento", ["tipo_documento_id"], :name => "index_documento_on_tipo_documento_id"
  add_index "documento", ["visibilidad_id"], :name => "index_documento_on_visibilidad_id"

  create_table "documento_reconocimiento", :id => false, :force => true do |t|
    t.integer "documento_id"
    t.integer "reconocimiento_id"
  end

  create_table "escuela", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "estado_documento", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "estudiante", :force => true do |t|
    t.decimal  "promedio_general",   :precision => 6, :scale => 4
    t.decimal  "promedio_ponderado", :precision => 6, :scale => 4
    t.decimal  "eficiencia",         :precision => 6, :scale => 4
    t.integer  "escuela_id"
    t.integer  "grado_id"
    t.integer  "persona_id"
    t.integer  "mencion_id"
    t.integer  "premio_id"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "estudiante", ["escuela_id"], :name => "index_estudiante_on_escuela_id"
  add_index "estudiante", ["grado_id"], :name => "index_estudiante_on_grado_id"
  add_index "estudiante", ["mencion_id"], :name => "index_estudiante_on_mencion_id"
  add_index "estudiante", ["persona_id"], :name => "index_estudiante_on_persona_id"
  add_index "estudiante", ["premio_id"], :name => "index_estudiante_on_premio_id"

  create_table "grado", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "idioma", :force => true do |t|
    t.string   "descripcion"
    t.string   "codigo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "jurado", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "documento_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "jurado", ["documento_id"], :name => "index_jurado_on_documento_id"
  add_index "jurado", ["persona_id"], :name => "index_jurado_on_persona_id"

  create_table "mencion", :force => true do |t|
    t.string   "descripcion"
    t.integer  "escuela_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "mencion", ["escuela_id"], :name => "index_mencion_on_escuela_id"

  create_table "persona", :force => true do |t|
    t.string   "cedula",          :limit => 10
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "nombre_completo"
    t.string   "email"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "premio", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "reconocimiento", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rindex", :force => true do |t|
    t.integer  "ocurrencia"
    t.integer  "documento_id"
    t.integer  "termino_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "rindex", ["documento_id"], :name => "index_rindex_on_documento_id"
  add_index "rindex", ["termino_id"], :name => "index_rindex_on_termino_id"

  create_table "termino", :force => true do |t|
    t.string   "descripcion"
    t.integer  "idioma_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "termino", ["idioma_id"], :name => "index_termino_on_idioma_id"

  create_table "tindex", :force => true do |t|
    t.integer  "ocurrencia"
    t.integer  "documento_id"
    t.integer  "termino_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "tindex", ["documento_id"], :name => "index_tindex_on_documento_id"
  add_index "tindex", ["termino_id"], :name => "index_tindex_on_termino_id"

  create_table "tipo_documento", :force => true do |t|
    t.string   "descripcion"
    t.string   "descripcion_corta"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "tutor", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "documento_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "tutor", ["documento_id"], :name => "index_tutor_on_documento_id"
  add_index "tutor", ["persona_id"], :name => "index_tutor_on_persona_id"

  create_table "usuario", :force => true do |t|
    t.string   "nombre",             :default => "", :null => false
    t.string   "email",              :default => "", :null => false
    t.string   "encrypted_password", :default => "", :null => false
    t.integer  "sign_in_count",      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "usuario", ["email"], :name => "index_usuario_on_email", :unique => true
  add_index "usuario", ["nombre"], :name => "index_usuario_on_nombre", :unique => true

  create_table "visibilidad", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
