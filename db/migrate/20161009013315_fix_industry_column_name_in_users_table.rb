class FixIndustryColumnNameInUsersTable < ActiveRecord::Migration
  def change
    rename_column :users, :industry, :industry_id
  end
end
