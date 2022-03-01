class ChangeDatatypeGenreOfReviews < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :genre, :integer, null: true, default: 0
  end
end
