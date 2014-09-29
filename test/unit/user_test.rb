require File.dirname(__FILE__) + '/../test_helper'

class UserTest < Test::Unit::TestCase
  fixtures :users

  def setup
    @einstein = users(:einstein)
    @goedel = users(:goedel)
    @planck = users(:planck)
  end

  def test_authentication
    assert_not_nil(User.authenticate('einstein', 'relativity'))
    assert_nil(User.authenticate('einstein', 'quantum'))
  end

  def test_uniqueness_of_login
    albert_the_clone = User.new(:login => @einstein.login)
    assert !albert_the_clone.save
  end
end
