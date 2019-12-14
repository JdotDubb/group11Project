class AddCourseToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :course, :string
  end
end
