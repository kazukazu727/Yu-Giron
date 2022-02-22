class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :tittle
      t.string :genre
      t.text :introduction
      t.string :play_time
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
