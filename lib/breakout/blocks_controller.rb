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

    def collision?(x, y, offset)
      @blocks.each do |block|
        if block.within_x(x, offset) && block.within_y(y, offset)
          @blocks.delete(block)
          return true
        end
      end

      false
    end

    def no_more_blocks?
      @blocks.empty?
    end
  end
end
