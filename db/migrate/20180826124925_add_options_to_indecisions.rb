class AddOptionsToIndecisions < ActiveRecord::Migration[5.2]
  def change
    add_reference :indecisions, :reponse_indecis, foreign_key: {to_table: :options}
    add_reference :indecisions, :reponse_heliast, foreign_key: {to_table: :options}
  end
end
