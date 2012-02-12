class Word
  
  attr_accessor :name
  
  def initialize(name)
    self.name = name
  end
  
  def definitions
    Wordnik.word.get_definitions(self.name)
  end
  
end