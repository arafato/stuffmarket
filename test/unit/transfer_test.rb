require File.dirname(__FILE__) + '/../test_helper'

class TransferTest < Test::Unit::TestCase
  fixtures :transfers

  def setup
    @einstein_to_goedel = transfers(:einstein_to_goedel)
    @goedel_to_planck = transfers(:goedel_to_planck)
    @planck_to_einstein = transfers(:planck_to_einstein)
  end


  def test_associations
    einstein = @einstein_to_goedel.from_user
    assert_equal(einstein.login, 'einstein')

    goedel = @einstein_to_goedel.to_user
    assert_equal(goedel.login, 'goedel')
  end


end
