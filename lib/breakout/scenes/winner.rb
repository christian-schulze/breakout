module Breakout
  module Scenes
    class Winner < Ray::Scene
      scene_name :winner

      def register
        on(:key_press) { exit! }
      end

      def render(window)
        @text = text('You Win!', size: 30, at: [window.view.w.div(2) - 60, window.view.h.div(2) - 50])
        @sub = text('press any key to continue', size: 15, at: [window.view.w.div(2) - 78, window.view.h.div(2)])
        window.draw(@text)
        window.draw(@sub)
      end
    end
  end
end
