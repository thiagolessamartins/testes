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

ActiveRecord::Schema.define(version: 20140804230420) do

  create_table "ata", force: true do |t|
    t.string   "titulo"
    t.string   "status"
    t.date     "data"
    t.string   "hora"
    t.string   "atafinal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", force: true do |t|
    t.string   "uf"
    t.string   "cidade"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pauta", force: true do |t|
    t.string   "titulo"
    t.date     "data"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pontos", force: true do |t|
    t.string   "titulo"
    t.date     "data"
    t.string   "staus"
    t.string   "solucao"
    t.integer  "questao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pontos", ["questao_id"], name: "index_pontos_on_questao_id"

  create_table "questaos", force: true do |t|
    t.string   "titulo"
    t.date     "data"
    t.string   "status"
    t.string   "solucao"
    t.integer  "pauta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questaos", ["pauta_id"], name: "index_questaos_on_pauta_id"

  create_table "reuniaos", force: true do |t|
    t.string   "titulo"
    t.date     "data"
    t.time     "horaInicio"
    t.time     "horaFim"
    t.string   "status"
    t.integer  "local_id"
    t.integer  "ata_id"
    t.integer  "pauta_id"
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reuniaos", ["ata_id"], name: "index_reuniaos_on_ata_id"
  add_index "reuniaos", ["local_id"], name: "index_reuniaos_on_local_id"
  add_index "reuniaos", ["pauta_id"], name: "index_reuniaos_on_pauta_id"

end
