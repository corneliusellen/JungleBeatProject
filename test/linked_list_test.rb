require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_works
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def new_linked_list_returns_head_equals_nil
      list = LinkedList.new
      assert_nil list.head
  end

  def test_append_returns_doop
    skip
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_instance_variables
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_multiple_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("woop")
  end

  def test_count_nodes
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_multiple_strings
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string

  end

  def test_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_prepend_count
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal 3, list.count
  end

  def test_insert
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_includes?
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert list.includes?("deep")
  end

  def test_false_includes?
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    refute list.includes?("dep")
  end

  def test_find
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shi shu", list.find(2, 2)
  end

  def test_pop
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    assert_equal "shu", list.pop
    assert_equal "deep woo shi", list.to_string
  end

  def test_pop_only_one_node
    skip
    list = LinkedList.new
    list.append("deep")
    list.pop
    assert_nil list.to_string
  end

end
