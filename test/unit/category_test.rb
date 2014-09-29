require File.dirname(__FILE__) + '/../test_helper'

class CategoryTest < Test::Unit::TestCase
  fixtures :categories

  def setup
    @root = categories(:root)
    @instruments = categories(:instruments)
    @guitars = categories(:guitars)
    @acoustic_guitars = categories(:acoustic_guitars)
    @electric_guitars = categories(:electric_guitars)
    @computers = categories(:computers)
  end

  def test_root_parent
    assert_nil(@root.parent)
  end

  def test_same_root
    assert_equal(@instruments.parent, @computers.parent)
    assert_equal(@electric_guitars.parent, @acoustic_guitars.parent)
  end

  def test_unique_name
    cat = Category.new(:name => @instruments.name)
    assert !cat.save
  end

  def test_presence_name
    cat = Category.new
    assert !cat.save
  end

end
