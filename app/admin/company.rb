ActiveAdmin.register Company do
  permit_params :title, :sector, :url, :github, :twitter, :city, :published
end
