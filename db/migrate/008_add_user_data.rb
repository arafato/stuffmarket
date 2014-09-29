class AddUserData < ActiveRecord::Migration
  def self.up
    User.delete_all
    User.create(:login => 'cyberfritz',
                :hashed_password => '2d6a52dfdc1de1250ef6b6f7bdb576b4a3444ebf', # password: 123
                :salt => '381793800.355986121835737',
                :firstname => 'Fritz',
                :lastname => 'Hinterdipfl',
                :street => 'Schellingstr. 29',
                :zipcode => '80333',
                :city => 'Munich',
                :country => 'Germany')
  end

  def self.down
    User.delete_all
  end
end
