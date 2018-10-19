corpus = "Howdy partner, sit down! How's it going?"
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


def jean_michel_data(corpus, dictionary)

  repetition = {}
  mots = corpus.downcase.split(/[^a-z]+/)


  dictionary.each do |reference|
    mots.each do |mot|
      if mot == reference 
        if repetition.has_key? reference
          mot[reference] +=1
        else
          repetition[mot] = 1
        end
      end
    end
  end

  repetition.each do |mot, nbFois|
    puts "Le mot \"#{mot}\" est présent #{nbFois}"
  end



end

jean_michel_data(corpus, dictionary)
