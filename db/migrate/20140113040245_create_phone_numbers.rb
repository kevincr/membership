class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :phone_type
      t.string :Phone_number

      t.timestamps
    end
  end
end
