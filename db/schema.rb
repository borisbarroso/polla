# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100511035457) do

  create_table "equipos", :force => true do |t|
    t.integer  "grupo_id"
    t.string   "nombre"
    t.string   "bandera"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipos", ["grupo_id"], :name => "index_equipos_on_grupo_id"

  create_table "grupos", :force => true do |t|
    t.string   "nombre",     :limit => 10
    t.string   "cede",       :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partidos", :force => true do |t|
    t.integer  "equipo1"
    t.integer  "equipo2"
    t.string   "lugar"
    t.datetime "fecha"
    t.integer  "goles_equipo1"
    t.integer  "goles_equipo2"
    t.boolean  "jugado"
    t.boolean  "publicar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "partidos", ["equipo1"], :name => "index_partidos_on_equipo1"
  add_index "partidos", ["equipo2"], :name => "index_partidos_on_equipo2"

  create_table "usuarios", :force => true do |t|
    t.string   "nombre",     :limit => 100
    t.string   "password",   :limit => 32,  :null => false
    t.string   "email",      :limit => 150, :null => false
    t.string   "alias",      :limit => 20
    t.string   "telefono",   :limit => 15
    t.string   "celular",    :limit => 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true

end
