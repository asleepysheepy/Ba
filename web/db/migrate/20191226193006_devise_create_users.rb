# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :provider, null: false, default: 'email'
      t.string :uid, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      t.string :snowflake
      t.string :discriminator
      t.string :username
      t.string :avatar_hash

      t.timestamps null: false
    end
  end
end
