ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :author, :title, :content, :created_at, :updated_at
#
  index do
    selectable_column
    id_column
    column :author
    column :title
    column :content
    column :created_at
    column :updated_at
    actions
  end

  filter :author
  filter :title
  filter :content
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Post" do
      f.input :author
      f.input :title
      f.input :content
      f.input :created_at
      f.input :updated_at
    end
    f.actions
  end
end
