ActiveAdmin.register Podcast do
  permit_params :name, :category, :description, :url

  index do
    selectable_column
    id_column
    column :name
    column :category
    column :description
    column :url
    actions
  end
  form do |f|
    f.inputs "Podcast Details" do
      f.input :name
      f.input :category
      f.input :description
      f.input :url
    end
    f.actions
  end

end
