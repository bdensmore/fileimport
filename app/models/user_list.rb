class UserList < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  belongs_to :file_import
end
