class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.datetime :datetime
      t.string :tmid
      t.string :imgUrl
      t.string :creator_id
      t.text :details
      t.string :venue

      t.timestamps
    end
  end
end
