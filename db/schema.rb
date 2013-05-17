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

ActiveRecord::Schema.define(:version => 20130517194441) do

  create_table "actividads", :force => true do |t|
    t.string   "nombre"
    t.string   "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fase_id"
    t.boolean  "estado"
  end

  create_table "adjuntos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
  end

  create_table "agenciaextranjeras", :force => true do |t|
    t.string   "nombre"
    t.string   "dueno"
    t.string   "skype"
    t.string   "email"
    t.string   "direccion"
    t.string   "pais"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "booker_id"
    t.integer  "telefono_id"
    t.string   "ciudad"
    t.string   "sucursal"
  end

  create_table "agenciamadres", :force => true do |t|
    t.string   "nombre"
    t.string   "dueno"
    t.string   "skype"
    t.string   "email"
    t.string   "direccion"
    t.string   "pais"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "booker_id"
    t.integer  "telefono_id"
    t.string   "ciudad"
    t.string   "sucursal"
  end

  create_table "albums", :force => true do |t|
    t.string   "nombre"
    t.string   "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "modelo_id"
    t.integer  "myphoto_id"
  end

  create_table "archivos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "adjunto_file_name"
    t.string   "adjunto_content_type"
    t.integer  "adjunto_file_size"
    t.datetime "adjunto_updated_at"
    t.string   "detalle"
    t.boolean  "valida"
    t.integer  "fase_id"
  end

  create_table "bookers", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "agenciamadre_id"
    t.integer  "agenciaextranjera_id"
  end

  create_table "caracteristicas", :force => true do |t|
    t.string   "estatura"
    t.string   "calzado"
    t.string   "idiomas"
    t.string   "tpantalon"
    t.string   "tcamisa"
    t.string   "busto"
    t.string   "cintura"
    t.string   "cadera"
    t.string   "cojos"
    t.string   "ccabello"
    t.string   "lcabello"
    t.string   "etnia"
    t.string   "hobbie"
    t.string   "mcuello"
    t.string   "terno"
    t.boolean  "desfile"
    t.boolean  "dientes"
    t.boolean  "actor"
    t.boolean  "frenillos"
    t.boolean  "experiencia"
    t.boolean  "hot"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "modelo_id"
    t.boolean  "cicatriz"
    t.boolean  "tatuaje"
    t.boolean  "piercing"
    t.string   "donde_cicatriz"
    t.string   "donde_tatuaje"
    t.string   "donde_piercing"
    t.string   "otros"
  end

  create_table "clientes", :force => true do |t|
    t.string   "rut"
    t.string   "razonsocial"
    t.string   "nombrefantasia"
    t.string   "direccion"
    t.string   "comuna"
    t.string   "ciudad"
    t.string   "pais"
    t.string   "contacto"
    t.string   "email"
    t.string   "ncontacto"
    t.string   "contactofinanzas"
    t.string   "ncontactofinanzas"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "giro"
    t.string   "email_finanza"
    t.integer  "estado"
  end

  create_table "competencias", :force => true do |t|
    t.string   "tipocompetencia"
    t.string   "nroorden"
    t.string   "producto"
    t.string   "campana"
    t.string   "razonsocial"
    t.string   "rut"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "giro"
    t.string   "productor"
    t.string   "fotografo"
    t.date     "fechafoto"
    t.string   "agencia"
    t.date     "fechafilmacion"
    t.date     "fechacomercial"
    t.integer  "texhibiciondia"
    t.string   "medios"
    t.string   "paises"
    t.string   "bookerresponsable"
    t.string   "tipofactura"
    t.string   "nrofactura"
    t.date     "fechafactura"
    t.string   "reexhibicion"
    t.string   "observaciones"
    t.string   "grafica"
    t.string   "contrato"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "texhibicionmes"
    t.integer  "texhibicionanno"
    t.integer  "detallecompetencia_id"
    t.string   "productora"
  end

  create_table "cotizaciones", :force => true do |t|
    t.date     "fecha"
    t.string   "cliente"
    t.string   "territorio"
    t.string   "jornada"
    t.string   "presupuesto"
    t.string   "exclusividad"
    t.string   "observaciones"
    t.string   "usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reexhibicion"
    t.date     "fechatrabajo"
    t.date     "fechatrabajofin"
    t.integer  "historial_id"
    t.string   "obsedit"
    t.string   "correo"
  end

  create_table "detallecompetencias", :force => true do |t|
    t.string   "rutmodelo"
    t.string   "nombremodelo"
    t.string   "apellidomodelo"
    t.string   "categoria"
    t.string   "nombreresponsable"
    t.string   "totalfactura"
    t.string   "comisionnma"
    t.string   "impuesto"
    t.string   "agenciamadre"
    t.string   "comisionamadre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "competencia_id"
    t.string   "tipo_id"
    t.integer  "id_modelo"
  end

  create_table "documentos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
    t.integer  "fase_id"
    t.string   "detalle"
    t.boolean  "valida"
    t.boolean  "rechaza"
    t.string   "comentario"
  end

  create_table "fases", :force => true do |t|
    t.string   "nombre"
    t.string   "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proyecto_id"
    t.boolean  "estado"
    t.string   "adjunto_file_name"
    t.string   "adjunto_content_type"
    t.integer  "adjunto_file_size"
    t.datetime "adjunto_updated_at"
    t.integer  "achivo_id"
    t.integer  "file_id"
    t.integer  "documento_id"
  end

  create_table "files", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
    t.integer  "fase_id"
  end

  create_table "fotos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "modelo_id"
  end

  create_table "historials", :force => true do |t|
    t.string   "usuario"
    t.date     "fecha"
    t.string   "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cotizacione_id"
  end

  create_table "lcotizas", :force => true do |t|
    t.integer  "cantidad"
    t.string   "personaje"
    t.string   "rol"
    t.integer  "tdia"
    t.integer  "tmes"
    t.integer  "tanno"
    t.string   "medios"
    t.string   "pais"
    t.integer  "valor"
    t.integer  "diaadicional"
    t.integer  "diaviajado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_cotizacione"
    t.integer  "cotizacione_id"
  end

  create_table "mantenedors", :force => true do |t|
    t.string   "tipo"
    t.string   "valor",      :limit => 1023
    t.string   "misc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo"
  end

  create_table "modelos", :force => true do |t|
    t.string   "tipo_id"
    t.string   "numero_id"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "sexo"
    t.date     "fecha_nacimiento"
    t.string   "nacionalidad"
    t.string   "tipo_id_responsable"
    t.string   "numero_id_responsable"
    t.string   "nombres_responsable"
    t.string   "apellidos_responsable"
    t.string   "telefono_fijo"
    t.string   "movil"
    t.string   "direccion"
    t.string   "comuna"
    t.string   "ciudad"
    t.string   "pais"
    t.string   "licencia"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "caracteristica_id"
    t.string   "pictures_file_name"
    t.string   "pictures_content_type"
    t.integer  "pictures_file_size"
    t.datetime "pictures_updated_at"
    t.integer  "foto_id"
    t.string   "agencia"
    t.string   "email"
    t.integer  "telefono_id"
    t.string   "perfil_file_name"
    t.string   "perfil_content_type"
    t.integer  "perfil_file_size"
    t.datetime "perfil_updated_at"
    t.string   "image"
    t.integer  "album_id"
    t.string   "link_pictures"
    t.string   "observaciones"
    t.integer  "estado"
  end

  create_table "myphotos", :force => true do |t|
    t.string   "nombre"
    t.string   "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture"
    t.integer  "album_id"
  end

  create_table "proyectos", :force => true do |t|
    t.string   "nombre"
    t.datetime "fechainicio"
    t.datetime "fechatermino"
    t.string   "ambiente"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "porcentaje"
  end

  create_table "proyectos_users", :force => true do |t|
    t.integer  "proyecto_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["nombre"], :name => "index_roles_on_nombre"

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "telefonos", :force => true do |t|
    t.string   "cod_area"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "agenciamadre_id"
    t.integer  "agenciaextranjera_id"
    t.string   "descripcion"
    t.integer  "modelo_id"
  end

  create_table "userroles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "nombre"
    t.string   "login"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proyecto_id"
    t.string   "cargo"
  end

  add_index "users", ["login"], :name => "index_users_on_login"
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"

end
