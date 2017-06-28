class AddMonthandyearToPersonalInformations < ActiveRecord::Migration[5.0]
  def change
    add_column :personal_informations, :Monthandyear, :date
  end
end
