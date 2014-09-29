class Deal < ActiveRecord::Base
  has_many :transfers
end
