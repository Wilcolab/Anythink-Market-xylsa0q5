class AddIsVerifiedToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :isVerified, :boolean, null: false, default: false
  end
end
