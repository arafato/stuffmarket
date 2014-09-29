class CreateTransCats < ActiveRecord::Migration
  def self.up
    create_table :trans_cats do |t|
      t.column :cat_id, :integer
      t.column :ancestor_id, :integer
    end
  end

  def self.down
    drop_table :trans_cats
  end
end
