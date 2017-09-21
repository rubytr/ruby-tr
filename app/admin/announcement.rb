ActiveAdmin.register Announcement do
  permit_params :title, :content, :user_id
end
