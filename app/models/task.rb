class Task < ApplicationRecord
    validates :content, presence: true, length: { maximum: 50 }
    validates :title, presence: true, length: { maximum: 50 }
    validates :status, presence: true, length: { maximum: 50 }
end