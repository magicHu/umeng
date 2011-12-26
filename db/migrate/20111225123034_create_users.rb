class CreateUsers < ActiveRecord::Migration
  def self.create
    create_table :users do |t|
      t.string :nickname
      t.string :imsi

      t.timestamps
    end
  end
  
  def self.drop
    drop_table :users
  end
end
