class Issue < ApplicationRecord
  belongs_to :project

  STATUSES = ["New", "In Progress", "Closed"]

  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :priority, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 5 }
end
