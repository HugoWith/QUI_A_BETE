class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.string :description
      t.date :end_date
      t.references :target, foreign_key: {to_table: :users}
      t.references :creator, foreign_key: {to_table: :users}
      t.references :beter, foreign_key: {to_table: :users}
      t.references :group, null: false, foreign_key: true
      t.string :stake
      t.integer :difficulty

      t.timestamps
    end
  end
end
