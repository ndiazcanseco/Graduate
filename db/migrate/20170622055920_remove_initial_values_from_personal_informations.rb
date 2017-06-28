class RemoveInitialValuesFromPersonalInformations < ActiveRecord::Migration[5.0]
  def change
    remove_column :personal_informations, :Monthandyears, :datetime
  end
end
