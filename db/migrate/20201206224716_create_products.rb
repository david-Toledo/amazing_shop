class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :brand
      t.string :department
      t.text :description
      t.decimal :price, precision:10, scale:2
      t.text :image

      t.timestamps
    end
  end
end
