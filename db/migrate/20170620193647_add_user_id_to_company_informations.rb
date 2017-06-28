class AddUserIdToCompanyInformations < ActiveRecord::Migration[5.0]
  def change
   

    add_reference :company_informations, :user, index: true
    add_foreign_key :company_informations, :users

   
  end
end
