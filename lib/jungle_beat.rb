require_relative 'linked_list'

class JungleBeat

  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    array = string.split
    array2 = array.each do |word|
      @list.append(word)
    end
    array2.join(" ")
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Bad News #{beats}`
  end

end
