class AddWinnerToBets < ActiveRecord::Migration[6.0]
  def change
    add_reference :bets, :winner, foreign_key: { to_table: :users }
  end
end
