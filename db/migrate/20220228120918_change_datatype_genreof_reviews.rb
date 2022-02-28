class ChangeDatatypeGenreofReviews < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :genre, :integer
  end
end
