require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddNameToStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    add_column :students, :name, :string
  end
end

