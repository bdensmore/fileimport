class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  has_many :file_imports

  def to_label
  	"#{self.first_name} #{self.last_name}"
  end
end
