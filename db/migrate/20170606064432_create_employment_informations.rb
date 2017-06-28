class CreateEmploymentInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :employment_informations do |t|
      t.string :Question1
      t.string :Question2
      t.string :Question2S
      t.string :Question2I
      t.string :Question3
      t.string :Question4
      t.string :Question5
      t.string :Question6
      t.string :Question6S
      t.string :Question7
      t.string :Question7O
      t.integer :Speaks
      t.integer :Writes
      t.integer :Read
      t.integer :ListenTo
      t.date :Question9
      t.string :Question10
      t.string :Question11
      t.string :Question12
      t.string :Question12O
      t.string :Question13

      t.timestamps
    end
  end
end
