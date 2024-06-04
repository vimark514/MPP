class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :subscription_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :subscriptions, :subscription_id
  end
end
