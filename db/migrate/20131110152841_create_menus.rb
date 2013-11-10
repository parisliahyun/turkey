class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :dish, :null => false
      t.string :type
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end

  def down
    drop_table :menus
  end
end
