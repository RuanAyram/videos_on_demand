# frozen_string_literal: true

class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.integer :view_count, default: 0, null: false
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
