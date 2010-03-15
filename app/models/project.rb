class Project < ActiveRecord::Base
  validates_presence_of :name, :what, :when, :why
end
