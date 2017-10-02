class AddUserIdToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :user_id, :integer
  end
end
