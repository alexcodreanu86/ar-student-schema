require_relative '../config'

# this is where you should use an ActiveRecord migration to

class RemoveFirstNameLastNameFromStudent < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    remove_column :students, :first_name
  end
end
