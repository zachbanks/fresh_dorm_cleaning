module ApplicationHelper
  def title
    base_title = "Fresh Dorm Cleaning"
    unless @title
      base_title
    else
      "#{base_title} | #@title"
    end
  end
end
