class Word
  
  attr_accessor :name
  
  def initialize(name)
    self.name = name
  end
  
  def definitions
    Wordnik.word.get_definitions(self.name)
  end

  # Get one or many random words
  # Word.random(:limit => 10)
  # Word.random
  def self.random(options={})

    # Defaults
    options.reverse_merge!(
      :min_corpus_count => 1000,
      :min_dictionary_count => 5,
      :limit => 1
    )
    
    # Get back an array of hashes that look like {"id"=>92367, "word"=>"resist"} 
    # and turn them into Word objects:
    words = Wordnik.words.get_random_words(options).map{|obj| Word.new(obj['word']) }
    
    # Return one or many?
    options[:limit] == 1 ? words.first : words
  end
  
end