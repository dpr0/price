# frozen_string_literal: true

class CreateSetups < ActiveRecord::Migration[6.0]
  def change
    create_table :setups do |t|
      t.string :code
      t.string :name
      t.timestamps
    end
  end
end
