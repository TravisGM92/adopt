class AddSheltersToPets < ActiveRecord::Migration[5.2]
  def change
    add_reference :pets, :shelter, foreign_key: true
  end
end
# add a reference onto pets, of shelter
