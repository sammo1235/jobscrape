class Search < ApplicationRecord
  has_many :job_posts, dependent: :destroy
end
