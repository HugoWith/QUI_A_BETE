class AddOverToBet < ActiveRecord::Migration[6.0]
  def change
    add_column :bets, :over, :boolean, default: false
  end
end
