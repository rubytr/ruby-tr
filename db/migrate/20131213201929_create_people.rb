class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :github
      t.string :twitter
      t.string :web

      t.timestamps
    end
  end
end
