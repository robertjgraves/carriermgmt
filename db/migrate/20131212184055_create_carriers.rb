class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.text :name

      t.timestamps
    end
  end
end
