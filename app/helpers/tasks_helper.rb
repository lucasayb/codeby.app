module TasksHelper
  def excerpt(html_content, length = 100, omission = '...')
    ActionController::Base.helpers.strip_tags(html_content).truncate(length, omission: omission)
  end
end
