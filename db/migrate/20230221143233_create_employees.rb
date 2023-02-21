# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.references :company, index: true, foreign_key: { to_table: :companies }
      t.string :role, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
