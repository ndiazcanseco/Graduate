class AddUserIdToEmploymentInformations < ActiveRecord::Migration[5.0]
  def change
    add_reference :employment_informations, :user, index: true
    add_foreign_key :employment_informations, :users

  end
end
