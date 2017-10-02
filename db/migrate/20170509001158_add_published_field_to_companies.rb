class AddPublishedFieldToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :published, :boolean, default: false
  end
end
