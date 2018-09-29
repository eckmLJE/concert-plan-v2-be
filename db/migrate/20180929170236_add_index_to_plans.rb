class AddIndexToPlans < ActiveRecord::Migration[5.2]
  def change
    add_index :plans_users, [:plan_id, :user_id], :unique => true
    add_index :plans_users, :user_id
  end
end
