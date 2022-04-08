class Player
  attr_accessor :name, :lives

  def initialize(name)
    @lives = 3
    @name = name
  end
  
  def minus_life
    if @lives > 0
      @lives -= 1
    end
  end
  
end

