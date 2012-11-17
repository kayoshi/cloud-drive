class CloudFile
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :filename, type: String

  field :data_secure_token, type: String

  mount_uploader :data, FileUploader

  belongs_to :client
  
  validates :name, uniqueness: true, presence: true

end
