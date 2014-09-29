class CreateTransfers < ActiveRecord::Migration
  def self.up
    create_table :transfers do |t|
      t.column :deal_id, :integer
      t.column :from_user_id, :integer
      t.column :to_user_id, :integer
      t.column :offer_id, :integer
      t.column :status, :integer
    end

    execute "alter table transfers add constraint fk_transfers_from_users
             foreign key (from_user_id) references users(id)"

    execute "alter table transfers add constraint fk_transfers_to_users
             foreign key (to_user_id) references users(id)"

    execute "alter table transfers add constraint fk_transfers_offers
             foreign key (offer_id) references offers(id)"

    execute "alter table transfers add constraint fk_transfers_deals
             foreign key (deal_id) references deals(id)"


  end

  def self.down
    drop_table :transfers
  end
end
