class AddUserIdToPersonalInformations < ActiveRecord::Migration[5.0]
  def change
    add_reference :personal_informations, :user, index: true
    add_foreign_key :personal_informations, :users
  end
end
