# frozen_string_literal: true

class CreateEmotes < ActiveRecord::Migration[6.0]
  def change
    create_table :emotes do |t|
      t.string :name, index: { unique: true }
      t.string :emoji
      t.string :regex
      t.string :available_month

      t.timestamps
    end
  end
end
