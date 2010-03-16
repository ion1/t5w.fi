module ApplicationHelper
  def timestamp time, format='%F %T'
    content_tag :abbr, time.strftime(h(format)),
                :class => 'timestamp', :title => time.iso8601
  end
end
