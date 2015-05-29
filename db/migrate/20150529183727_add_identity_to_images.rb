class AddIdentityToImages < ActiveRecord::Migration
  def change
    add_column :images, :identity_id, :integer
  end
end
