class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :email
      t.date :date_of_birth
      t.timestamps
      
    end
  end
end
