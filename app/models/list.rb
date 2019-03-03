class List < ApplicationRecord
  belongs_to :boards, optional: true
  has_many :tasks
end
