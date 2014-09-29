class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :login, :string
      t.column :hashed_password, :string
      t.column :salt, :string
      t.column :firstname, :string
      t.column :lastname, :string
      t.column :street, :string
      t.column :zipcode, :string
      t.column :city, :string
      t.column :country, :string
    end
  end

  def self.down
    drop_table :users
  end
end
