# frozen_string_literal: true

class CreateManufacturers < ActiveRecord::Migration[6.0]
  def change
    create_table :manufacturers do |t|
      t.string :code
      t.string :name
      t.timestamps
    end
  end
end
