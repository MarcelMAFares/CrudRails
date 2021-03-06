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

ActiveRecord::Schema.define(version: 2021_05_10_175152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contatos", force: :cascade do |t|
    t.string "numero"
    t.string "tipo"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_contatos_on_user_id"
  end

  create_table "generos", force: :cascade do |t|
    t.string "gnome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "idade"
    t.string "cpf"
    t.bigint "genero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genero_id"], name: "index_users_on_genero_id"
  end

  add_foreign_key "contatos", "users"
  add_foreign_key "users", "generos"
end
