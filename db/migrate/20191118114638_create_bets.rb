class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.string :description
      t.date :end_date
      t.references :users, null: false, foreign_key: true
      t.references :groups, null: false, foreign_key: true
      t.string :stake
      t.integer :difficulty

      t.timestamps
    end
  end
end
