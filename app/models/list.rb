class List < ApplicationRecord
  has_many :tasks
  has_many :boards, through: :tasks
end
