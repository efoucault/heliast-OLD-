ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :encrypted_password, :reset_password_token, :remember_created_at, :created_at, :updated_at, :first_name, :last_name, :level, :admin, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    column :id
    column :email
    column :created_at
    column :last_sign_in_at
    column :sign_in_count
    column :admin
    actions
  end

end
