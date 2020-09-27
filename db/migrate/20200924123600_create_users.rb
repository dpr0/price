# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
