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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160416011844) do

  create_table "inventarios", force: :cascade do |t|
    t.string   "num_serie"
    t.integer  "tamanio"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "inventarios", ["num_serie"], name: "index_inventarios_on_num_serie", unique: true

  create_table "operacions", force: :cascade do |t|
    t.string   "trabajo"
    t.integer  "trabajador_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "inventario_id"
  end

  add_index "operacions", ["inventario_id"], name: "index_operacions_on_inventario_id"
  add_index "operacions", ["trabajador_id"], name: "index_operacions_on_trabajador_id"

  create_table "trabajadors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
