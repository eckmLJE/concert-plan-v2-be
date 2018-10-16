class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :plan_id
      t.string :user_name
      t.text :content

      t.timestamps
    end
  end
end
