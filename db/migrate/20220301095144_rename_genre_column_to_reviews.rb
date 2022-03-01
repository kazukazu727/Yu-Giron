class RenameGenreColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :genre, :genre_id
  end
end
