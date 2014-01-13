class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.references :member, index: true

      t.timestamps
    end
  end
end
