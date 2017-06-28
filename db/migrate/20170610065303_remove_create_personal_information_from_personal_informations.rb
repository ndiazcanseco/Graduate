class RemoveCreatePersonalInformationFromPersonalInformations < ActiveRecord::Migration[5.0]
  def change
    remove_column :personal_informations, :End, :date
  end
end
