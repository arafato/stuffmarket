class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.column :name, :string
      t.column :short_description, :string
      t.column :long_description, :string
      t.column :picture_url, :string
      t.column :user_id, :integer
      t.column :category_id, :integer
    end

    execute "alter table offers add constraint fk_offers_users
             foreign key (user_id) references users(id)"

    execute "alter table offers add constraint fk_offers_category
            foreign key (category_id) references categories(id)"


  end

  def self.down
    drop_table :offers
  end
end
