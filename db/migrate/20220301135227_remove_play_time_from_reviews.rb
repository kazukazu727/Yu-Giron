class RemovePlayTimeFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :play_time, :string
  end
end
