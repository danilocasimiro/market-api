# frozen_string_literal: true

class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.string :area_code
      t.string :number
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
