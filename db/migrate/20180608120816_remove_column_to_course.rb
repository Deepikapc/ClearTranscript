class RemoveColumnToCourse < ActiveRecord::Migration
  def change
  	remove_column :courses, :section_id
  end
end
