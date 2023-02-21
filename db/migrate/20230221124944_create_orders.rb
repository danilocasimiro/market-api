# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.0]
  def change # rubocop:disable Metrics/MethodLength
    create_table :orders do |t|
      t.references :company, index: true, foreign_key: { to_table: :companies }
      t.references :client, index: true, foreign_key: { to_table: :clients }
      t.references :cashier, index: true, foreign_key: { to_table: :cashiers }
      t.string  :observation
      t.decimal :value, null: false
      t.decimal :discount, default: 0
      t.decimal :final_value, null: false
      t.decimal :paid_value, null: false
      t.string  :status, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
