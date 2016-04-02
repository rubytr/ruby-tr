class AddPublishedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :published, :boolean, default: false
  end
end
