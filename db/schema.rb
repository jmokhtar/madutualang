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

ActiveRecord::Schema.define(:version => 20130325184028) do

  create_table "agents", :force => true do |t|
    t.string   "nama"
    t.string   "no_kp"
    t.string   "umur"
    t.string   "alamat"
    t.string   "negeri"
    t.string   "daerah"
    t.date     "tarikh_mula"
    t.integer  "aktif"
    t.integer  "pengurus"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "poskod"
  end

  add_index "agents", ["email"], :name => "index_agents_on_email", :unique => true
  add_index "agents", ["reset_password_token"], :name => "index_agents_on_reset_password_token", :unique => true

  create_table "customers", :force => true do |t|
    t.string   "nama"
    t.string   "no_kp"
    t.string   "umur"
    t.string   "alamat"
    t.string   "negeri"
    t.string   "daerah"
    t.string   "poskod"
    t.string   "penyakit"
    t.date     "tarikh_mula"
    t.integer  "aktif"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "agent_id"
  end

  create_table "purchases", :force => true do |t|
    t.string   "produk"
    t.integer  "kuantiti"
    t.date     "tarikh_belian"
    t.integer  "agent_id"
    t.integer  "customer_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
