class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.boolean :active
      t.boolean :is_member
      t.datetime :join_date

      t.timestamps
    end
  end
end
