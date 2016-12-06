ActiveAdmin.register User do

  permit_params :name, :email, :web, :github, :twitter

end
