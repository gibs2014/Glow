class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :colour
      t.string :brand
      t.integer :price
      t.string :size
      t.string :body_shape
      t.string :material
      t.string :image
      t.string :purchase_link
    end
  end
end
