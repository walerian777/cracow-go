class CreateVisitedLocations < ActiveRecord::Migration[5.0]
  def up
    create_table :visited_locations do |t|
      t.references :location, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :recent, null: false, default: true
      t.boolean :recommended, null: false, default: false

      t.timestamps
    end

    execute <<-SQL
      CREATE OR REPLACE FUNCTION update_recent_in_new_visited_locations() RETURNS TRIGGER AS
      $$
        BEGIN
          UPDATE visited_locations
          SET recent = false
          WHERE location_id = NEW.location_id
          AND user_id = NEW.user_id
          AND id != NEW.id;

          RETURN NEW;
        END
      $$
      LANGUAGE plpgsql;

      CREATE TRIGGER update_recent_in_new_visited_locations_trigger
      AFTER INSERT ON visited_locations FOR EACH ROW
      EXECUTE PROCEDURE update_recent_in_new_visited_locations();
    SQL
  end

  def down
    execute <<-SQL
      DROP TRIGGER IF EXISTS update_recent_in_new_visited_locations_trigger ON visited_locations;
      DROP FUNCTION IF EXISTS update_recent_in_new_visited_locations();
    SQL
    drop_table :visited_locations
  end
end
