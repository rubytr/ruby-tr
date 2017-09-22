ActiveAdmin.register Announcement do
  permit_params :title, :content, :admin_user_id
end
