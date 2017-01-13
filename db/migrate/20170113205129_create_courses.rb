class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.references :program, index: true

      t.timestamps
    end
  end
end
