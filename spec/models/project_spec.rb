require 'spec_helper'

describe Project do
  it "should be valid with correct attributes" do
    project = Factory.build :project
    project.should be_valid
  end

  [:name, :what, :when, :why].each do |attribute|
    it "should not be valid when attribute '#{attribute}' is blank" do
      project = Factory.build :project, attribute => ''

      project.should_not be_valid
      project.errors[attribute].should include "can't be blank"
      project.errors.count.should be 1
    end
  end
end
