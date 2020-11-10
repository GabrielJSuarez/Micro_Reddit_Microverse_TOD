class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 10, maximum: 144}, uniqueness: true
    validates :description, length: { maximum: 500}
    validates :url, presence: true
    belongs_to :user
end
