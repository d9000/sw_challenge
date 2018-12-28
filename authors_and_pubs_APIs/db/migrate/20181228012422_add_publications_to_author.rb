class AddPublicationsToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_reference :publications, :author, index: true
  end
end
