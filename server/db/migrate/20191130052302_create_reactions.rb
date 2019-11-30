class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.string :server_id
      t.string :user_id
      t.string :emoji

      t.timestamps
    end
  end
end
