class AddNewValuesToPersonalInformations < ActiveRecord::Migration[5.0]
  def change
    add_column :personal_informations, :Monthandyears, :date
  end
end
