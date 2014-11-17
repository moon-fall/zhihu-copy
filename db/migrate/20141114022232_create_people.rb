class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :email
      t.string :username
      t.text :introduce
      t.integer :user_id

      t.timestamps
    end
  end
end
