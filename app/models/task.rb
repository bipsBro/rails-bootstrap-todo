class Task < ApplicationRecord
  belongs_to :todo, optional: true
end
