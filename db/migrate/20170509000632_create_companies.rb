class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :title
      t.string :sector
      t.string :url
      t.string :github
      t.string :twitter
      t.string :city
    end
  end
end
