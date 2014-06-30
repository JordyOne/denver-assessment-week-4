require "erb_generator"
class DogHTMLPage < ERBGenerator
  def initialize(dogs = {})
    @dogs = dogs
  end

  def title
    template = "<h1>There are <%=dog_number%> dogs</h1>"
    options_hash = {:locals => {:dog_number => @dogs.length}}
    erb(template, options_hash)

    unless @dogs.length == 0
      template = "<h1>There are no dogs</h1>"
    end
  end


end
