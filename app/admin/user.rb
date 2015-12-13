ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :created_at, :updated_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at
#
  index do
    selectable_column
    id_column
    column :email
    column :sign_in_count
    column :current_sign_in_at
    column :last_sign_in_at
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :sign_in_count
  filter :current_sign_in_at
  filter :last_sign_in_at
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Post" do
      f.input :email
      f.input :sign_in_count
      f.input :current_sign_in_at
      f.input :last_sign_in_at
      f.input :created_at
      f.input :updated_at
    end
    f.actions
  end
end
