module Facades
  module Partials
    module Comments
      class ListFacade
        attr_reader :comments

        delegate :present?, to: :comments

        def initialize(:comments)
          @comments = comments || []
        end

        def description
          if comments.present?
            "there are #{comments.size} comments."
          else
            "There are no comments."
          end
        end

        def top_comment?(comment)
          comment[:top] == true
        end

        def comment_class_for(comment)
          list = ['comment']

          if top_comment?(comment)
            list << 'top-comment'
          end

          list.join(' ')
        end
      end
    end
  end
end
