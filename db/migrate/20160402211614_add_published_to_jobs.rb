class AddPublishedToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :published, :boolean, default: false
  end
end
