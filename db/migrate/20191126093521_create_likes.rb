class CreateLikes < ActiveRecord::Migration[6.0]
    def change
      create_table :likes do |t|
        t.references :bet, null: false, foreign_key: true
        t.references :user, null: false, foreign_key: true
        t.timestamps
      end
    end
  end