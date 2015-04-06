ActiveAdmin.register User do
  permit_params :name, :email, :password

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :password_digest
    actions
  end
  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :password
    end
    f.actions
  end
end
