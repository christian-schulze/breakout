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

    def collision?(x, y, offset)

    end
  end
end
