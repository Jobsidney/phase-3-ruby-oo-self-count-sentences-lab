require 'pry'

class String
  attr_accessor :str
  def initialize(str)
    @str=str
  end

  def sentence?
    self.str.end_with?(".") ? true : false
  end

  def question?
    self.str.end_with?("?") ? true : false
  end

  def exclamation?
    self.str.end_with?("!") ? true : false
  end

  def count_sentences
    self.scan(/(\w)./)
  end
end
neww=String.new("job?")
p neww.question?