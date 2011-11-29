module ApplicationHelper
  # Include custom helper modules.
  include FormattingHelper
  
  def render_title
    base_title = "Fresh Dorm Cleaning"
    @title ? "#{base_title} | #{@title}" : base_title
  end
end
