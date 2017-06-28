class AddUserIdToLearnings < ActiveRecord::Migration[5.0]
  def change
    add_reference :learnings, :user, index: true
    add_foreign_key :learnings, :users

  
  end
end
