class AddLoserToBets < ActiveRecord::Migration[6.0]
  def change
    add_reference :bets, :loser, foreign_key: { to_table: :users }
  end
end
