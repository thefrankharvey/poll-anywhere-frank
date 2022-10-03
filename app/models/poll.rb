class Poll < ApplicationRecord
  has_many :options, dependent: :destroy

  validates :title, presence: true
end
