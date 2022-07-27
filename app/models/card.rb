class Card < ApplicationRecord
  enum state: { down: 0, up: 1, done: 2 }

  belongs_to :game

  def flipped?
    state.up? || state.done?
  end
end
