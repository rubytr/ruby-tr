ActiveAdmin.register Announcement do
  permit_params :title, :content, :admin_user_id

  form do |f|
    f.inputs "Announcement Details" do
      f.input :admin_user, as: :select, collection: AdminUser.all.map{|a| [a.email, a.id]}
      f.input :title
      f.input :content
      f.submit
    end
  end
end
