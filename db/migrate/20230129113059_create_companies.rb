# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.string :business_name, null: false
      t.string :fantasy_name, null: false
      t.string :cnpj, null: false
      t.date :foundation
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
