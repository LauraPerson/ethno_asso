class AddUserToRessources < ActiveRecord::Migration[7.0]
  def change
    add_reference :ressources, :user, null: false, foreign_key: true
  end
end
