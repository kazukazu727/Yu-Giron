class AddColumnsToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :star, :float
    add_column :reviews, :price, :string
    add_column :reviews, :game_tittle, :string
    add_column :reviews, :plat_form, :string
  end
end
