ActiveAdmin.register Company do
  permit_params :user_id, :title, :sector, :url, :github, :twitter, :city, :published
end
