class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.column :offer_id, :integer
      t.column :category_id, :integer
    end

    execute "alter table requests add constraint fk_requests_offers
             foreign key (offer_id) references offers(id)"

    execute "alter table requests add constraint fk_requests_categories
             foreign key (category_id) references categories(id)"

  end

  def self.down
    drop_table :requests
  end
end
