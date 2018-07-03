class AddPointsToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :points, :text
  end
end
