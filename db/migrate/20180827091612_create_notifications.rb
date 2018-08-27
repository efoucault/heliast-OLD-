class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.text :message
      t.references :historique, foreign_key: true
      t.references :indecision, foreign_key: true

      t.timestamps
    end
  end
end
