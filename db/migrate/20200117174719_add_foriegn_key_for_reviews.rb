class AddForiegnKeyForReviews < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :products, :reviews
  end
end
