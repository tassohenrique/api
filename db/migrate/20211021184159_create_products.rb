class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :product_type
      t.string :price
      t.float :rating

      t.timestamps
    end
  end
end
