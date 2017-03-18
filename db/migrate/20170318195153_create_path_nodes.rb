class CreatePathNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :path_nodes do |t|
      t.references :location, foreign_key: true
      t.references :path, foreign_key: true

      t.timestamps
    end
  end
end
