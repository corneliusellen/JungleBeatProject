require_relative 'node'
require 'pry'

class LinkedList

      attr_accessor :head

  def initialize(head=nil)
    @head = head
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
      else
        current_node = @head
       until current_node.next_node.nil?
          current_node = current_node.next_node
        end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    current_node = @head
    count = 0
    until current_node.nil?
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    current_node = @head
    a = []
      until current_node.nil?
        a << "#{current_node.data}"
        current_node = current_node.next_node
      end
    a.join(" ")
  end

  def prepend(data)
    right_node = @head
    @head = Node.new(data)
    @head.next_node = right_node #need to figure out which side of the variables it's on
  end

  def insert(position, data)
    current_node = @head
    counter = 0

      until counter == (position - 1)
        counter += 1
        current_node = current_node.next_node
      end
    left_node = current_node

      until counter == position
        counter += 1
        current_node = current_node.next_node
      end
    right_node = current_node

    current_node = Node.new(data)
    left_node.next_node = current_node
    current_node.next_node = right_node
  end

  def includes?(string)
    current_node = @head
      until current_node.nil?
        if current_node.data == string
          return true
          break
        else
          current_node = current_node.next_node
        end
      end
    return false
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    popped = current_node.next_node.data
    current_node.next_node = nil
    return popped
  end

  def find(index, elements)
    current_node = @head
    counting = 0
      until counting == index
        counting += 1
        current_node = current_node.next_node
      end
    left_node = current_node

      until counting == (index + elements - 1)
        counting += 1
        current_node = current_node.next_node
      end
    right_node = current_node

    find_array = []
      until left_node.data == right_node.next_node.data
      find_array << left_node.data
      left_node = left_node.next_node
      end
    find_array.join(" ")
  end

end
