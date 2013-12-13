class CreateOriginDestinationPairs < ActiveRecord::Migration
  def change
    create_table :origin_destination_pairs do |t|
      t.integer :origin_id
      t.integer :destination_id

      t.timestamps
    end
    add_index :origin_destination_pairs, :origin_id
    add_index :origin_destination_pairs, :destination_id
    add_index :origin_destination_pairs, [:origin_id, :destination_id], unique: true
  end
end
