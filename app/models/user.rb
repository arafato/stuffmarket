require 'digest/sha1'

class User < ActiveRecord::Base
  has_many :offers

  validates_presence_of :login
  validates_uniqueness_of :login

  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :street
  validates_presence_of :zipcode
  validates_presence_of :city
  validates_presence_of :country

  attr_accessor :password_confirmation
  validates_confirmation_of :password

  def validate
    errors.add_to_base("Missing password") if hashed_password.blank?
  end


  def self.authenticate(name, password)
    user = self.find_by_login(name)
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end

  

  # 'password' is a virtual attribute

  def password
    @password
  end

  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end


  def get_offers_array
    @offers_array = Array.new
    offers.each do |offer|
      if(available_offers?(offer))
        @offers_array << [[offer.name], [offer.id]]
      end
    end
    @offers_array
  end


  #####################
  ## PRIVATE
  private


  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end

  def self.encrypted_password(password, salt)
    string_to_hash = password + "foobar" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end

  def available_offers?(offer)
    transfers = offer.transfers
    transfers.each do |transfer|
        if transfer.deal.status == 1
          return false
        end
      end
    true
  end





end
