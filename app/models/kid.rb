class Kid < ApplicationRecord
  AGE = ["baby", "toddler", "child", "preteen", "teen"]
  PERSONALITY = ["grumpy", "happy", "sleepy", "dopey", "bashful", "shy", "sneezy"]

  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings

  validates :name, :description, :price, :address, presence: true
  validates :age_category, inclusion: { in: AGE }
  validates :personality, inclusion: { in: PERSONALITY }
  validates :price, numericality: { greater_than: 0 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_attr,
                  against: [:name, :description, :age_category, :personality],
                  using: {
                    tsearch: { prefix: true }
                  }
end
