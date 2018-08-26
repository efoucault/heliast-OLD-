class CreateHistoriques < ActiveRecord::Migration[5.2]
  def change
    create_table :historiques do |t|
      t.references :user, foreign_key: true
      t.references :indecision, foreign_key: true
      t.date :date_relance
      t.string :status
      t.date :date_fin

      t.timestamps
    end
  end
end
