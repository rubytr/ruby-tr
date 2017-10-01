class ChangeUserToAdminUserInAnnouncement < ActiveRecord::Migration[5.1]
  def change
    remove_reference(:announcements, :user, foreign_key: true)
    add_reference(:announcements, :admin_user, foreign_key: true)
  end
end
