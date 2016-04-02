ActiveAdmin.register Job do
  permit_params :title, :company, :description, :link, :location, :published
end
