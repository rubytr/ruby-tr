class AddGravatarUrlToPeople < ActiveRecord::Migration
  def change
    add_column :people, :gravatar_url, :string
  end
end
