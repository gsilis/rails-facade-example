module Services
  module Announcements
    class GetAnnouncementService
      def call
        return nil if rand > 0.5

        { priority: ['important', 'info', 'what'].sample, text: 'This is some sort of announcement!' }
      end
    end
  end
end
