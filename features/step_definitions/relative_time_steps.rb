Then /^I should see a timestamp no (older|newer) than (.*)$/ do |direction, dur|
  seconds = ChronicDuration.parse dur
  if seconds.nil?
    raise ArgumentError, "Invalid duration #{dur.inspect}"
  end

  timestamps = all(:css, 'abbr.timestamp').map do |node|
    Time.iso8601(node['title']) rescue nil
  end.compact

  if direction == 'older'
    timestamps.should have_a_member be >= Time.now-seconds
  else
    timestamps.should have_a_member be <= Time.now+seconds
  end
end
