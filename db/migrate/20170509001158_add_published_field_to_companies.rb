class AddPublishedFieldToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :published, :boolean, default: false
  end
end
