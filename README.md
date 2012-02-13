wordnik-ruby-example-rails
==========================

This is a barebones vanilla rails app demonstrating how to use the wordnik gem in rails.

Files of Note
-------------

These are the only files I modified after generating the rails app:

    Gemfile
    config/initializers/wordnik.rb # <-- Put your API key in here
    app/models/word.rb
    
Trying it Out
-------------

```bash
git clone git@github.com:zeke/wordnik-ruby-example-rails.git
cd wordnik-ruby-example-rails
bundle
# Add your api key to config/initializers/wordnik.rb
rails console
```

In the console, you can experiment with the word model..

    > dog = Word.new "dog"
     => #<Word:0x007fa6958d7190 @name="dog"> 
    > dog.definitions
     => [{"word"=>"dog", "text"=>"A domesticated carnivorous mammal (Canis familiaris) related to the foxes and wolves and raised in a wide variety of breeds.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"0"}, {"word"=>"dog", "text"=>"Any of various carnivorous mammals of the family Canidae, such as the dingo.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"1"}, {"word"=>"dog", "text"=>"A male animal of the family Canidae, especially of the fox or a domesticated breed.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"2"}, {"word"=>"dog", "text"=>"Any of various other animals, such as the prairie dog.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"3"}, {"word"=>"dog", "text"=>"Informal   A person:  You won, you lucky dog. ", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"4"}, {"word"=>"dog", "text"=>"Informal   A person regarded as contemptible:  You stole my watch, you dog. ", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"5"}, {"word"=>"dog", "text"=>"Slang   A person regarded as unattractive or uninteresting.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"6"}, {"word"=>"dog", "text"=>"Slang   Something of inferior or low quality: \"The President had read the speech to some of his friends and they told him it was a dog”  ( John P. Roche). ", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"7"}, {"word"=>"dog", "text"=>"Slang   An investment that produces a low return or a loss.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"8"}, {"word"=>"dog", "text"=>"Slang   The feet.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"9"}, {"word"=>"dog", "text"=>"See andiron.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"10"}, {"word"=>"dog", "text"=>"Slang   A hot dog; a wiener.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"11"}, {"word"=>"dog", "text"=>"Any of various hooked or U-shaped metallic devices used for gripping or holding heavy objects.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"12"}, {"word"=>"dog", "text"=>"Astronomy   A sun dog.", "score"=>0.0, "partOfSpeech"=>"noun", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"13"}, {"word"=>"dog", "text"=>"Totally; completely. Often used in combination:  dog-tired. ", "score"=>0.0, "partOfSpeech"=>"adverb", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"14"}, {"word"=>"dog", "text"=>"To track or trail persistently: \"A stranger then is still dogging us”  ( Arthur Conan Doyle). ", "score"=>0.0, "partOfSpeech"=>"verb-transitive", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"15"}, {"word"=>"dog", "text"=>"To hold or fasten with a mechanical device: \"Watertight doors and hatches were dropped into place and dogged down to give the ship full watertight integrity”  ( Tom Clancy). ", "score"=>0.0, "partOfSpeech"=>"verb-transitive", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"16"}, {"word"=>"dog", "text"=>"dog it  Slang   To fail to expend the effort needed to do or accomplish something.", "score"=>0.0, "partOfSpeech"=>"idiom", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"17"}, {"word"=>"dog", "text"=>"go to the dogs  To go to ruin; degenerate.", "score"=>0.0, "partOfSpeech"=>"idiom", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"18"}, {"word"=>"dog", "text"=>"put on the dog  Informal   To make an ostentatious display of elegance, wealth, or culture.", "score"=>0.0, "partOfSpeech"=>"idiom", "attributionText"=>"from The American Heritage® Dictionary of the English Language, 4th Edition", "sourceDictionary"=>"ahd-legacy", "sequence"=>"19"}] 

         
    > Word.random
     => #<Word:0x007fa0ac110158 @name="earthworm"> 
 
    > Word.random(limit: 5)
     => [#<Word:0x007fa806c658f8 @name="damn">, #<Word:0x007fa806c658a8 @name="militant">, #<Word:0x007fa806c65858 @name="insubordination">, #<Word:0x007fa806c65808 @name="dismount">, #<Word:0x007fa806c657b8 @name="unbowed">]