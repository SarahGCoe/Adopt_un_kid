class Kid < ApplicationRecord
  AGE = ["baby", "toddler", "child", "preteen", "teen"]
  PERSONALITY = ["grumpy", "happy", "sleepy", "dopey", "bashful", "shy", "sneezy"]

  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings

  validates :name, :description, :price, presence: true
  validates :age_category, inclusion: { in: AGE }
  validates :personality, inclusion: { in: PERSONALITY }
  validates :price, numericality: { greater_than: 0 }
end
