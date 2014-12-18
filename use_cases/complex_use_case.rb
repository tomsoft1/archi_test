

# Note that ideally UseCase should inherit from the UseCase class and follow
# the same rule: initialize,
# and execute (or another name, but this name should be the same for all use case)
#

class ComplexUseCase < UseCase
  def initialize objet_facade,objet2,objet3
  end


  def execute
    # do something very complex here
  end

end


