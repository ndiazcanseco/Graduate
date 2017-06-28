class CreateLearnings < ActiveRecord::Migration[5.0]
  def change
    create_table :learnings do |t|
      t.string :Quality
      t.string :Studies
      t.string :Projects
      t.string :Investigation
      t.string :Infrastructure
      t.string :Experience

      t.timestamps
    end
  end
end
