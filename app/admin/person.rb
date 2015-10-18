ActiveAdmin.register Person do

  permit_params :name, :email, :web, :github, :twitter

end
