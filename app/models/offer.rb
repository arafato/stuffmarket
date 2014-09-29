class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :requests
  has_many :transfers


  validates_presence_of :name
  validates_inclusion_of :category_id, :in => Category.category_tree.map {|disp, value| value}

 # validates_format_of :picture_url,
 # :with => %r{ \.(gif|jpg|png)$}i,
 # :message => "must be a URL for a GIF, JPG, or PNG image"

end
