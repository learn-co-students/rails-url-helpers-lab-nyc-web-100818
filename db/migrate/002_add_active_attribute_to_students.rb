class AddActiveAttributeToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active,:boolean, default: false
    # add "active" column to students table and set the default value to false
  end
end
