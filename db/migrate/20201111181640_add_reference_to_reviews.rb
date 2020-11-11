class AddReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
