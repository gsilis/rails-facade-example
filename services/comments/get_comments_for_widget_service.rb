module Services
  module Comments
    class GetCommentsForWidgetService
      def initialize(:widget_id)
        @widget_id = widget_id
      end

      def call
        ({
          1: [
            { name: 'Some dude', comment: 'This thing was a thing.' }
            { name: 'The dude', comment: 'There\'s a beverage here, man!.', top: true }
          ],
          2: [
            { name: 'What', comment: 'First!' }
          ],
          3: [],
          4: [],
          5: [],
          6: [],
          7: []
        })[@widget_id.to_sym]
      end
    end
  end
end
