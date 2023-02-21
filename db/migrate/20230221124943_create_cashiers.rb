# frozen_string_literal: true

class CreateCashiers < ActiveRecord::Migration[7.0]
  def change
    create_table :cashiers do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.references :company, index: true, foreign_key: { to_table: :companies }
      t.decimal  :open_value, null: false
      t.datetime :opening_at, null: false
      t.datetime :closing_at, null: false

      t.timestamps
    end
  end
end
