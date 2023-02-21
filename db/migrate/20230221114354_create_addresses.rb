# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[7.0]
  def change # rubocop:disable Metrics/MethodLength
    create_table :addresses do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
