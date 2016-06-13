class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.text :menu_discription
      t.string :cuisine
      t.integer :price

      t.timestamps null: false
    end
  end
end
