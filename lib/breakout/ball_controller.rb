module Breakout
  class BallController
    MAX_SPEED = 5

    attr_reader :scene, :ball, :player, :blocks_controller

    def initialize(scene:, ball:, player:, blocks_controller:)
      @scene             = scene
      @ball              = ball
      @player            = player
      @blocks_controller = blocks_controller
    end

    def update
      move_x
      move_y
    end

    def render
      ball.render
    end

    def out_of_bounds?
      ball.y > scene.h + ball.radius
    end

    def self.random_velocity
      sign  = (rand(2) == 1) ? 1 : -1
      speed = rand(MAX_SPEED) + 1
      speed * sign
    end

    private

    def move_x
      ball.move_x

      if scene.collision_x?(ball.x, ball.radius)
        ball.reverse_x
      elsif blocks_controller.collision?(ball.x, ball.y, ball.radius)
        ball.reverse_x
      end
    end

    def move_y
      ball.move_y

      case
      when ball.velocity_y > 0 && player.collision?(ball.x, ball.y, ball.radius)
        ball.reverse_y
      when ball.velocity_y > 0 && blocks_controller.collision?(ball.x, ball.y, ball.radius)
        ball.reverse_y
      when ball.velocity_y < 0 && scene.collision_y?(ball.y, ball.radius)
        ball.reverse_y
      when ball.velocity_y < 0 && blocks_controller.collision?(ball.x, ball.y, ball.radius)
        ball.reverse_y
      end
    end
  end
end
