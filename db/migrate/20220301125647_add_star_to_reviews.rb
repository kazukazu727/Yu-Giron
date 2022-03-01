class AddStarToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :star, :float, null: false, default: 0.0
  end
end
