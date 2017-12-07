require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_jb_exists
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_initialize_list
    jb = JungleBeat.new
    assert_nil jb.list.head
  end

  def test_append
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_list_head_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
  end

  def test_list_head_next_node_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_append_again
    jb = JungleBeat.new
    jb.append("woo hoo shu")
    assert_equal "woo hoo shu", jb.append("woo hoo shu")
  end

  def test_count
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.list.count
  end

  def test_play
    jb = JungleBeat.new
    jb.append("three six nine, damn you fine")
    assert_equal "deep doo ditt woo hoo shu deep doo ditt woo", jb.play
  end

end
