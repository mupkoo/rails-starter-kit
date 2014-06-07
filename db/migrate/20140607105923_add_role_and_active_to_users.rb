class AddRoleAndActiveToUsers < ActiveRecord::Migration
    def change
        add_column :users, :role, :string, default: 'user'
        add_column :users, :is_active, :boolean, default: true
    end
end
