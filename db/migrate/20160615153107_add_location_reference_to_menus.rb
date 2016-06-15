class AddLocationReferenceToMenus < ActiveRecord::Migration
  def change
    add_reference :menus, :location, index: true, foreign_key: true
  end
end
