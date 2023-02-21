# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change # rubocop:disable Metrics/MethodLength
    create_table :products do |t|
      t.references :company, index: true, foreign_key: { to_table: :companies }
      t.references :category, index: true, foreign_key: { to_table: :categories }
      t.references :business_unit, index: true, foreign_key: { to_table: :business_units }
      t.string :name, null: false
      t.string :description
      t.string :image_url
      t.decimal :cost_price, null: false
      t.decimal :sale_price, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
