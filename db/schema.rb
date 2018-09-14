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

ActiveRecord::Schema.define(version: 20180914205907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "total_duration"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.integer "birth_year"
    t.integer "first_album_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ciudads", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pais", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "suscriptores"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publicacions", force: :cascade do |t|
    t.string "titulo"
    t.string "ciudad"
    t.string "tipo"
    t.text "texto"
    t.string "autor"
    t.date "fecha"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "songs", "albums"
end
