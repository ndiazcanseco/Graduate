class CreatePersonalInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_informations do |t|
      t.string :FirstName
      t.string :FirstLastName
      t.string :SecondLastName
      t.string :ControlNumber
      t.date :Birthdate
      t.string :Curp
      t.string :Phone
      t.string :Address
      t.string :Unity
      t.string :City
      t.string :State
      t.string :Profession
      t.string :Specialty
      t.string :Titulo
      t.string :Language
      t.string :Computing

      t.timestamps
    end
  end
end
