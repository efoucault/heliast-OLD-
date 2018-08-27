class AddNewstatusToIndecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :indecisions, :new_status, :integer
  end
end
