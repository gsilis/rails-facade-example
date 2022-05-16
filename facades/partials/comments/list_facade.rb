module Facades
  module Partials
    module Comments
      class ListFacade
        attr_reader :comments

        def initialize(:comments)
          @comments = comments
        end

        def description
          if comments.present?
            "there are #{comments.size} comments."
          else
            "There are no comments."
          end
        end
      end
    end
  end
end
