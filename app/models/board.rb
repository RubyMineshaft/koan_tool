class Board < ApplicationRecord
  serialize [:id, :size, :state], JSON
end
