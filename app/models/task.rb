class Task < ApplicationRecord
  belongs_to :list, optional: true
  belongs_to :board, optional: true
end
