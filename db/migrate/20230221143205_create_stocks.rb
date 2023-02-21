# frozen_string_literal: true

class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.references :product, index: true, foreign_key: { to_table: :products }
      t.integer :quantity, null: false
      t.integer :minimum, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
