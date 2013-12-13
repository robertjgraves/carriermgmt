class ChangeDataTypesForCarriers < ActiveRecord::Migration
  def self.up 
  	change_table :carriers do |t|
  		t.change :name, :string
   	end
  end

  def self.down 
  	change_table :locations do |t|
  		t.change :name, :text
   	end
  end
end
