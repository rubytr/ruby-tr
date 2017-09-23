class RenamePeopleToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table :people, :users
  end
end
