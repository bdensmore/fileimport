class FileImport < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user
  has_many :user_lists
  
  before_save :create_uploads_directory_unless_exist

  class Constants
  	# ACCEPTED_FILE_TYPES = ['.xls', '.xlxs', '.txt']
  	UPLOADS_DIRECTORY = "public/uploads"
  end

  # validates :file_name, presence: true
  validates_format_of :name, with: %r{\.(xls|xlxs|txt)$}i, message: "Invalid file, Please only use .xls, .xlsx or .txt"
  validates :user_id, presence: true

  def save_file

  end

  def create_uploads_directory_unless_exist
  	Dir.mkdir( Constants::UPLOADS_DIRECTORY ) unless File.exists?( Constants::UPLOADS_DIRECTORY )
  end

end
