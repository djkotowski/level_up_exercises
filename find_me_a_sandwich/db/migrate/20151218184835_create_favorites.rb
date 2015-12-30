class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.belongs_to :user, index: true
      t.belongs_to :menu_item, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorites, :users
    add_foreign_key :favorites, :menu_items
  end
end
