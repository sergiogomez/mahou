class Trophy < ActiveRecord::Base
  validates_presence_of :title

  attr_reader :complete_title

  def complete_title
    return "Trophy \"#{self.title}\""
  end
end
