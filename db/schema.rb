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

ActiveRecord::Schema.define(:version => 20141204021851) do

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "problems", :force => true do |t|
    t.string   "title",                            :null => false
    t.integer  "time_limit",    :default => 1000
    t.integer  "memory_limit",  :default => 65536
    t.text     "description"
    t.text     "input"
    t.text     "output"
    t.text     "sample_input"
    t.text     "sample_output"
    t.text     "hint"
    t.text     "source"
    t.integer  "contest",       :default => 0
    t.boolean  "special",       :default => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "statuses", :force => true do |t|
    t.integer  "problem_id"
    t.integer  "author"
    t.datetime "submit_time"
    t.integer  "exe_time"
    t.integer  "exe_memory"
    t.integer  "code_len"
    t.integer  "language"
    t.integer  "result"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.integer  "admin"
    t.integer  "solved"
    t.integer  "submitted"
    t.text     "motto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
