require 'rspec/matchers'

[[:have_a_member,     "have a member",     :any?],
 [:have_every_member, "have every member", :all?]].
each do |name, desc, iterator|
  Rspec::Matchers.define name do |matcher|
    match do |actual|
      actual.send(iterator) {|member| matcher.matches? member }
    end
    description do
      begin
        "#{desc} #{matcher.description}"
      rescue
        "#{desc} match #{matcher.inspect}"
      end
    end
    failure_message_for_should do |actual|
      "expected #{actual.inspect} to #{description}"
    end
    failure_message_for_should_not do |actual|
      "expected #{actual.inspect} not to #{description}"
    end
  end
end
