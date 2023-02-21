# frozen_string_literal: true

class CreatePaymentMethods < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_methods do |t|
      t.references :company, index: true, foreign_key: { to_table: :companies }
      t.string :name, null: false
      t.string :short_name
      t.string :description
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
