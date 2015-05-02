ActiveAdmin.register Podcast do
  permit_params :name, :category, :description, :url, :image, :remote_image_url

  index do
    selectable_column
    id_column
    column :name
    column :category
    column :description
    column :url
    column :image
    actions
  end
  form do |f|
    f.inputs "Podcast Details", :multipart => true do
      f.input :name
      f.input :category
      f.input :description
      f.input :url
      f.input :image, :as => :file
      f.input :remote_image_url
    end
    f.actions
  end

end
