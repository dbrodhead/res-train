class AddPgroupIdToPeriods < ActiveRecord::Migration
  def change
    add_column :periods, :pgroup_id, :integer
  end
end
