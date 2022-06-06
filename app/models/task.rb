class Task < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :status, inclusion: { in: %w(TODO DOING DONE) }
end
