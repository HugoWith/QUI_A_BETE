class CreateInvitedUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :invited_users do |t|
      t.references :invitation, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
