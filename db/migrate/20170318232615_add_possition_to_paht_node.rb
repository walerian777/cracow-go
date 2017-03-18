class AddPossitionToPahtNode < ActiveRecord::Migration[5.0]
  def change
    add_column :path_nodes, :possition, :integer
  end
end
