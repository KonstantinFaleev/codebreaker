# frozen_string_literal: true

module Codebreaker
  module Motivation
    private

    def motivation_message(msg)
      return unless message_is_allowed?

      msg
    end

    def message_is_allowed?
      !game.won? && game.attempts == rand(1..game.configuration.max_attempts)
    end
  end
end
