module Breakout
  class Block
    attr_reader :x, :y, :width, :height, :colour

    def initialize(target:, x:, y:, width: 50, height: 15, colour: Ray::Color.blue)
      @target = target
      @x, @y = x, y
      @width, @height = width, height
      @colour = colour
    end

    def update

    end

    def render
      @target.draw(Ray::Polygon.rectangle([x, y, width, height], colour))
    end

    def within_x(position, offset)
      within((x..x + width), position, offset)
    end

    def within_y(position, offset)
      within((y..y + height), position, offset)
    end

    private

    def within(range, position, offset)
      range.include?(position + offset) || range.include?(position - offset)
    end
  end
end
