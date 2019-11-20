class AddGiftReceivedToBets < ActiveRecord::Migration[6.0]
  def change
    add_column :bets, :gift_received, :boolean, default: false
  end
end
