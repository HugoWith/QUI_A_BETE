class AddLikeNumberToBet < ActiveRecord::Migration[6.0]
  def change
    add_column :bets, :like_number, :integer, default: 0
  end
end
