class FixActiveAdminCommentsIndexName < ActiveRecord::Migration[6.1]
  def up
    remove_index :active_admin_comments, name: :index_active_admin_comments_on_author_type_and_author_id if index_name_exists?(:active_admin_comments, :index_active_admin_comments_on_author_type_and_author_id)
    add_index :active_admin_comments, [:author_type, :author_id] unless index_name_exists?(:active_admin_comments, :index_active_admin_comments_on_author)
  end

  def down;end
end
