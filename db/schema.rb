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

ActiveRecord::Schema.define(:version => 20100418161113) do

  create_table "contents", :force => true do |t|
    t.string  "type"
    t.integer "page_id"
    t.string  "container"
    t.string  "title"
    t.text    "body"
  end

  create_table "layouts", :force => true do |t|
    t.string "view"
    t.string "container_list"
  end

  create_table "pages", :force => true do |t|
    t.string  "title"
    t.integer "parent_id"
    t.string  "path"
    t.integer "layout_id"
  end

end
