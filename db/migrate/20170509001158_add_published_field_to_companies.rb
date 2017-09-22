class AddPublishedFieldToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :published, :boolean, default: false
  end
end
