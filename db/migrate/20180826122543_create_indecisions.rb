class CreateIndecisions < ActiveRecord::Migration[5.2]
  def change
    create_table :indecisions do |t|
      t.string :titre
      t.text :description
      t.date :deadline
      t.text :reponse
      t.string :status
      t.boolean :heliast_anonyme
      t.boolean :indecis_anonyme

      t.timestamps
    end
  end
end
