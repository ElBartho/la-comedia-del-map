class Play < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 3, maximun: 50}
  validates :synopsis, presence: true, length: {minimum: 10, maximun: 200}
end
