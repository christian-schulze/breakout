module Breakout
  class Ball
    attr_reader :x, :y, :radius
    attr_accessor :velocity_x, :velocity_y

    def initialize(target:, x:, y:, radius:, velocity_x:, velocity_y:)
      @target     = target
      @x          = x
      @y          = y
      @radius     = radius
      @velocity_x = velocity_x
      @velocity_y = velocity_y
    end

    def render
      @target.draw(Ray::Polygon.circle([x, y], radius, Ray::Color.red))
    end

    def move_x
      @x += velocity_x
    end

    def move_y
      @y += velocity_y
    end

    def reverse_x
      @velocity_x = -velocity_x
    end

    def reverse_y
      @velocity_y = -velocity_y
    end
  end
end
