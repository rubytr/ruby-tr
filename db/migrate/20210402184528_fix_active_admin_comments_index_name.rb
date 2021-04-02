class FixActiveAdminCommentsIndexName < ActiveRecord::Migration[6.1]
  def up
    return unless index_name_exists?(:active_admin_comments, :index_active_admin_comments_on_author_type_and_author_id)

    rename_index :active_admin_comments, :index_active_admin_comments_on_author_type_and_author_id, :index_active_admin_comments_on_author
  end

  def down;end
end
