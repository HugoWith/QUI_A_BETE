class CreateUsergroups < ActiveRecord::Migration[6.0]
  def change
    create_table :usergroups do |t|
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
