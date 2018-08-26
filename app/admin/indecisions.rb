ActiveAdmin.register Indecision do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :titre, :description, :deadline, :reponse, :status, :heliast_anonyme, :indecis_anonyme, :created_at, :updated_at, :indecis_id, :heliast_id, :reponse_indecis_id, :reponse_heliast_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
