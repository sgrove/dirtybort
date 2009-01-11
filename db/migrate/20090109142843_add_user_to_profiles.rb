class AddUserToProfiles < ActiveRecord::Migration
  def self.up
    add_column :profiles, :user_id, :integer
  end

  def self.down
  end
end
