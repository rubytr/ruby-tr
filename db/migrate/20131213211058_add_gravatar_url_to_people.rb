class AddGravatarUrlToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :gravatar_url, :string
  end
end
