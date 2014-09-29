class AddCategoryData < ActiveRecord::Migration
  def self.up
    Category.delete_all

    Category.create(:parent_id => 0,
                    :name => 'Match Everything')
    Category.create(:parent_id => 1,
                    :name => 'Books') #2
    Category.create(:parent_id => 1,
                    :name => 'Movies') #3
    Category.create(:parent_id => 1,
                    :name => 'Music') #4
                    
    Category.create(:parent_id => 2,
                    :name => 'Computer')
    Category.create(:parent_id => 2,
                    :name => 'Children')               
    Category.create(:parent_id => 2,
                    :name => 'Literature')
                    
    Category.create(:parent_id => 3,
                    :name => 'Action')
    Category.create(:parent_id => 3,
                    :name => 'Comedy')               
    Category.create(:parent_id => 3,
                    :name => 'Adult')
                    
    Category.create(:parent_id => 4,
                    :name => 'Electronic')
    Category.create(:parent_id => 4,
                    :name => 'Jazz')               
    Category.create(:parent_id => 4,
                    :name => 'Rock')
                    
  end

  def self.down
    Category.delete_all
  end
end
