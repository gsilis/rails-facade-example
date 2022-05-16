module Services
  module Widgets
    class GetWidgetsService
      def call
        [
          { id: '1', name: 'One', rating: 1.0 },
          { id: '2', name: 'Two', rating: 4.5 },
          { id: '3', name: 'Three', rating: 2.4 },
          { id: '4', name: 'Four', rating: 3.0 },
          { id: '5', name: 'Five', rating: 1.5 },
          { id: '6', name: 'Six', rating: 3.9 },
          { id: '7', name: 'Seven', rating: 2.9 }
        ]
      end
    end
  end
end
