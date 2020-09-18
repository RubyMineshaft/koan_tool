class Board < ApplicationRecord
  serialize :state, JSON
end
