class AddEndToPersonalInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :personal_informations, :End, :date
  end
end
