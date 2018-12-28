class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.datetime :publicated_at
      t.text :body
      t.string :title
      t.timestamps
    end
  end
end
