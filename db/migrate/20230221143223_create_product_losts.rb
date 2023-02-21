# frozen_string_literal: true

class CreateProductLosts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_losts do |t|
      t.references :product, index: true, foreign_key: { to_table: :products }
      t.integer :quantity, null: false
      t.string :reason, null: false

      t.timestamps
    end
  end
end
