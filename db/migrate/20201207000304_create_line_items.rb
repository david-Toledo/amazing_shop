class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :basket_id
      t.integer :product_id

      t.timestamps
    end
  end
end
