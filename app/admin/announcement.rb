def admin_collection
  AdminUser.all.map { |a| [a.email, a.id] }
end

ActiveAdmin.register Announcement do
  permit_params :title, :content, :admin_user_id

  form do |f|
    f.inputs 'Announcement Details' do
      f.input :admin_user, as: :select, collection: admin_collection
      f.input :title
      f.input :content
      f.submit
    end
  end

  filter :admin_user, as: :select, collection: admin_collection
end
