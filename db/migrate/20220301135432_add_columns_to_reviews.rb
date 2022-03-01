class AddColumnsToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :play_time_id, :integer
    add_column :reviews, :price_id, :integer
    add_column :reviews, :plat_form_id, :integer
  end
end
