class Job < ActiveRecord::Base
  validates :embed_code, presence: true
end
