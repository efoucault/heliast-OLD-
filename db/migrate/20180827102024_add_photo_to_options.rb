class AddPhotoToOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :options, :photo, :string
  end
end
