# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_11_20_224326) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradores", force: :cascade do |t|
    t.string "tipo"
    t.string "nome"
    t.string "sobrenome"
    t.string "identificacao"
    t.string "celular1"
    t.string "celular2"
    t.string "telefone_fixo"
    t.string "razao_social"
    t.string "nome_fantasia"
    t.string "representante_legal"
    t.date "data_cadastro"
    t.string "rua"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "email"
    t.string "senha"
    t.string "confirmar_senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "cpf"
    t.string "celular1"
    t.string "celular2"
    t.date "data_cadastro"
    t.string "rua"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "email"
    t.text "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "embalagens", force: :cascade do |t|
    t.string "nome", limit: 150
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movimentacoes", force: :cascade do |t|
    t.string "codigo_lote"
    t.string "tipo"
    t.bigint "cliente_id", null: false
    t.integer "quantidade_sacas"
    t.float "peso_total"
    t.string "localizacao"
    t.bigint "qualidade_id", null: false
    t.date "data_cadastro"
    t.bigint "embalagem_id", null: false
    t.text "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_movimentacoes_on_cliente_id"
    t.index ["embalagem_id"], name: "index_movimentacoes_on_embalagem_id"
    t.index ["qualidade_id"], name: "index_movimentacoes_on_qualidade_id"
  end

  create_table "qualidades", force: :cascade do |t|
    t.string "nome", limit: 150
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "useres", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_useres_on_email", unique: true
    t.index ["reset_password_token"], name: "index_useres_on_reset_password_token", unique: true
  end

  add_foreign_key "movimentacoes", "clientes"
  add_foreign_key "movimentacoes", "embalagens"
  add_foreign_key "movimentacoes", "qualidades"
end
