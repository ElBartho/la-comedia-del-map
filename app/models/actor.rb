class Actor < ActiveRecord::Base
  validates :last_name, presence: true, length: {minimum: 3, maximun: 50}
  validates :first_name, presence: true, length: {minimum: 3, maximun: 50}
  validates :gender, presence: true, length: {minimum: 3, maximun: 50}
end
