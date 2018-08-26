class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :titre
      t.references :indecision, foreign_key: true

      t.timestamps
    end
  end
end
