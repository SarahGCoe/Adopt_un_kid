class Kid < ApplicationRecord
  AGE = ["baby", "toddler", "child", "preteen", "teen"]
  PERSONALITY = ["grumpy", "happy", "sleepy", "dopey", "bashful", "shy", "sneezy"]
  belongs_to :user
  has_many :bookings
  validates :name, :description, :price, presence: true
  validates :age_category, inclusion: { in: AGE }
  validates :personality, inclusion: { in: PERSONALITY }
end
