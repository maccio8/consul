class Newsletter < ActiveRecord::Base
  validates :subject, presence: true
  validates :to, presence: true
  validates :from, presence: true
  validates :body, presence: true
end
