ActiveAdmin.register User, as: "User" do
  menu label: "Users"
  config.comments = false
  actions :index, :new, :create, :show, :edit, :update

  filter :email

  index download_links: false do
    column :email
    column :created_at
    column :updated_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
    end
    f.buttons
  end

end
