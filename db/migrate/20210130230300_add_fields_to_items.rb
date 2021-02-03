# frozen_string_literal: true

class AddFieldsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :setup_id, :integer
    add_column :items, :props_bool1, :boolean
    add_column :items, :props_bool2, :boolean
    add_column :items, :props_bool3, :boolean
    add_column :items, :props_int1, :integer
    add_column :items, :props_int2, :integer
    add_column :items, :props_int3, :integer
  end
end
