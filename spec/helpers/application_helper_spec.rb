require 'rexml/document'
require 'spec_helper'

describe ApplicationHelper do
  def helper
    @helper ||= ApplicationController.helpers
  end

  describe 'timestamp' do
    before :all do
      @time = Time.iso8601 '2010-02-03T04:05:06+07:00'
    end

    it 'should return an abbr element with correct formatting' do
      fmt = 'blah %F %T %z blah'
      doc = REXML::Document.new ERB::Util.h(helper.timestamp(@time, fmt))
      doc.root.name.should == 'abbr'
      doc.root.attributes['class'].should == 'timestamp'
      Time.iso8601(doc.root.attributes['title']).should == @time
      doc.root.text.should == @time.strftime(fmt)
    end

    it 'should have a default formatting' do
      doc = REXML::Document.new ERB::Util.h(helper.timestamp(@time))
      doc.root.text.should == @time.strftime('%F %T')
    end

    it 'should escape unsafe format' do
      fmt = '<%F & %T>'
      doc = REXML::Document.new ERB::Util.h(helper.timestamp(@time, fmt))
      doc.root.text.should == @time.strftime(fmt)
    end

    it 'should pass through safe format' do
      fmt = '<strong>%F %T</strong>'.html_safe
      doc = REXML::Document.new ERB::Util.h(helper.timestamp(@time, fmt))
      doc.root.elements[1].name.should == 'strong'
      doc.root.elements[1].text.should == @time.strftime('%F %T')
    end
  end
end
