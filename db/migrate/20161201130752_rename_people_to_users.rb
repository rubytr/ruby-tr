class RenamePeopleToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_table :people, :users
  end
end
