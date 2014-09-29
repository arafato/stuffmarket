class Category < ActiveRecord::Base
  belongs_to :parent, :class_name => "Category"
  has_many :children, :class_name => "Category", :foreign_key => "parent_id", :order => "name", :dependent => :destroy
  has_many :offers
  has_many :requests

  validates_presence_of :name
  validates_uniqueness_of :name



  def self.category_tree
    level = 0
    elements = Array.new
    @cat_tree = Array.new

    self.category_tree_rec(level, Category.find(1), @cat_tree)

    return @cat_tree
  end


  def self.category_tree_rec(level, act_elem, cat_tree)

    level_indicator = ""
    level.times do
      level_indicator += "..."
    end

    @cat_tree += [
                 [level_indicator + act_elem.name, act_elem.id]
                 ]

    act_elem.children.each do |item|
      self.category_tree_rec(level+1, item, @cat_tree)
    end
  end

end


