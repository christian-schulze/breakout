module Breakout
  class BlocksController
    def initialize(blocks)
      @blocks = blocks
    end

    def update

    end

    def render
      @blocks.each(&:render)
    end

    def collision?(x, y, velocity_x, velocity_y, offset)
      case
      when velocity_x > 0 && velocity_y > 0
      when velocity_x < 0 && velocity_y < 0
      when velocity_x > 0 && velocity_y < 0
      when velocity_x < 0 && velocity_y > 0
      end
    end
  end
end
