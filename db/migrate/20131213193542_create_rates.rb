class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.references :carrier, index: true
      t.references :origin_destination_pair, index: true
      t.decimal :rate
      t.decimal :surcharge
      t.date :effective_date

      t.timestamps
    end
  end
end
