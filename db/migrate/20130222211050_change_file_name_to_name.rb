class ChangeFileNameToName < ActiveRecord::Migration
  def up
  	rename_column :file_imports, :file_name, :name
  end

  def down
  	rename_column :file_imports, :name, :file_name
  end
end
