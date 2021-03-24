class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity, patrons = [ ])
    @name     = name
    @capacity = capacity
    @patrons  = patrons
  end

  def add_patron(guest)
    @patrons << guest
  end


  # In this method .upcase gives an error. In researching I found
  # that .map(&:upcase) returned the desired result, however I
  # cannot tell you what .map does so I will not be including it for
  # this exercise. I am guessing the problem is that even though
  # the contents of this array are strings, Ruby doesn't recognize
  # that and will not complete the .upcase method unless some
  # other method is passed through to tell it is ok. I was thinking
  # it would be using #each but then I went down the rabbit hole of
  # well then I'd need to shovel it into a new array and so on.
  def yell_at_patrons
    @patrons.upcase
  end

  def over_capacity?
    return true if @patrons.length >= 5
    false
  end

  def kick_out
    loop do
      @patrons.pop

      if @patrons.length == 4
        break
      end
    end
  end

end
