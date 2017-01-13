class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :program, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
