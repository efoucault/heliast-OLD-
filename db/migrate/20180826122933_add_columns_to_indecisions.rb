class AddColumnsToIndecisions < ActiveRecord::Migration[5.2]
  def change
    add_reference :indecisions, :indecis, foreign_key: {to_table: :users}
    add_reference :indecisions, :heliast, foreign_key: {to_table: :users}
  end
end
