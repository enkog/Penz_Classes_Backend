class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :instructor_name
      t.string :image

      t.timestamps
    end
  end
end
