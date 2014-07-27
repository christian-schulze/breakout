require_relative './block'

module Breakout
  class BlockBuilder
    def self.build_blocks(target)
      new(target).build_blocks
    end

    def initialize(target)
      @target = target
    end

    def build_blocks
      build_row(10, 5, Ray::Color.blue) +
      build_row(40, 25, Ray::Color.gray) +
      build_row(10, 45, Ray::Color.green) +
      build_row(40, 65, Ray::Color.white) +
      build_row(10, 85, Ray::Color.fuschia)
    end

    private

    def build_row(x, y, colour)
      (0..9).map do |index|
        build_block(x + (index * 50) + (index * 10), y, colour)
      end
    end

    def build_block(x, y, colour)
      Block.new(target: @target, x: x, y: y, width: 50, height: 15, colour: colour)
    end
  end
end
