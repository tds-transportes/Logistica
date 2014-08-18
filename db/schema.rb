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

ActiveRecord::Schema.define(version: 20140818233329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cnhs", force: true do |t|
    t.string   "numero"
    t.date     "validade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcas", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelos", force: true do |t|
    t.string   "nome"
    t.integer  "marca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modelos", ["marca_id"], name: "index_modelos_on_marca_id", using: :btree

  create_table "motorista", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.integer  "cnh_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "motorista", ["cnh_id"], name: "index_motorista_on_cnh_id", using: :btree

  create_table "motorista_veiculos", force: true do |t|
    t.integer  "motorista_id"
    t.integer  "veiculo_id"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "motorista_veiculos", ["motorista_id"], name: "index_motorista_veiculos_on_motorista_id", using: :btree
  add_index "motorista_veiculos", ["veiculo_id"], name: "index_motorista_veiculos_on_veiculo_id", using: :btree

  create_table "transportadoras", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "nome_fantasia"
    t.string   "inscricao_estadual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "veiculos", force: true do |t|
    t.integer  "modelo_id"
    t.string   "placa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "veiculos", ["modelo_id"], name: "index_veiculos_on_modelo_id", using: :btree

end
