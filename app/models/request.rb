class Request < ActiveRecord::Base
  belongs_to :offer
  belongs_to :category

  validates_presence_of :offer_id

end
