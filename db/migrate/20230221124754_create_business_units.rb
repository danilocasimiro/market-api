# frozen_string_literal: true

class CreateBusinessUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :business_units do |t|
      t.references :company, index: true, foreign_key: { to_table: :companies }
      t.string :name, null: false
      t.string :short_name, null: false
      t.string :description
      t.integer :units
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
