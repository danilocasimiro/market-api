# frozen_string_literal: true

class CreateCashierMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :cashier_movements do |t|
      t.references :cashier, index: true, foreign_key: { to_table: :cashiers }
      t.references :payment_method, index: true, foreign_key: { to_table: :payment_methods }
      t.decimal :value, null: false
      t.string :type, null: false
      t.string :observation

      t.timestamps
    end
  end
end
