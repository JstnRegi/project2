class AddCoursesToBootcamp < ActiveRecord::Migration
  def change
    add_column :bootcamps, :courses, :text
  end
end
