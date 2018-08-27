class RemoveStatusFromIndecisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :indecisions, :status, :string
  end
end
