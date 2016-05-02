class Task < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3}
  validates :description, length: {maximum: 250}

end
