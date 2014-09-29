class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.column :parent_id, :integer
      t.column :name, :string
    end

#############################################
## Impossible to construct root category!!
#############################################
#    execute "alter table categories add constraint fk_categories_parent
#             foreign key (parent_id) references categories(id)"

  end

  def self.down
    drop_table :categories
  end
end
