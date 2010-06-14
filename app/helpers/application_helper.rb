# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def cache_helper(&block)
    return $cached if $cached
    
    $cached = capture_with_haml(&block)
  end
end
