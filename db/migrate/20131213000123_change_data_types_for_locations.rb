class ChangeDataTypesForLocations < ActiveRecord::Migration
  def self.up 
  	change_table :locations do |t|
  		t.change :name, :string
  		t.change :city, :string
  		t.change :state, :string
  	end
  end

  def self.down 
  	change_table :locations do |t|
  		t.change :name, :text
  		t.change :city, :text
  		t.change :state, :text
  	end
  end
end
