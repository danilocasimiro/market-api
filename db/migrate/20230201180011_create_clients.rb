# frozen_string_literal: true

class CreateClients < ActiveRecord::Migration[7.0]
  def change # rubocop:disable Metrics/MethodLength
    create_table :clients do |t|
      t.references :company, index: true, foreign_key: { to_table: :companies }
      t.string :name, null: false
      t.string :surname
      t.string :rg
      t.string :cpf
      t.integer :gender, null: false, default: 0
      t.date :birthday
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
