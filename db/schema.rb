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

ActiveRecord::Schema[7.0].define(version: 2023_08_17_042506) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aeronaves", force: :cascade do |t|
    t.string "modelo"
    t.string "matricula"
    t.integer "horas_vuelo_acumulado"
    t.integer "horas_vuelo_mantencion"
    t.integer "mantencion_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operaciones_aereas", force: :cascade do |t|
    t.bigint "aeronave_id", null: false
    t.bigint "piloto_id", null: false
    t.date "fecha_operacion"
    t.integer "horas_vuelo"
    t.integer "toque_y_despegue"
    t.integer "aterrizajes"
    t.boolean "incidentes"
    t.text "comentarios"
    t.string "aerodromos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aeronave_id"], name: "index_operaciones_aereas_on_aeronave_id"
    t.index ["piloto_id"], name: "index_operaciones_aereas_on_piloto_id"
  end

  create_table "pilotos", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.string "numero_socio"
    t.string "numero_licencia"
    t.integer "horas_vuelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_pilotos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "rut"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "operaciones_aereas", "aeronaves", column: "aeronave_id"
  add_foreign_key "operaciones_aereas", "pilotos"
  add_foreign_key "pilotos", "usuarios"
end
