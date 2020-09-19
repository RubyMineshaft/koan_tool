class Board < ApplicationRecord
  serialize [:id, :state], JSON
end
