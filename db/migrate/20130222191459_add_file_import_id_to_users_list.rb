class AddFileImportIdToUsersList < ActiveRecord::Migration
  def change
    add_column :user_lists, :file_import_id, :integer
  end
end
