class CreateQuestions < ActiveRecord::Migration
  def change
    drop_table :questions
    create_table :questions do |t|
      t.string :title
      t.text :text
	  
	  t.references :user, index: true

      t.timestamps
    end
  end
end
