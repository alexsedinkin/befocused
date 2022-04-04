class ChangeCompletedDefaultOnGoal < ActiveRecord::Migration[7.0]
  def change
    change_column :goals, :completed, :boolean, default: false
  end
end
