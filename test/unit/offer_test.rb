require File.dirname(__FILE__) + '/../test_helper'

class OfferTest < Test::Unit::TestCase
  fixtures :categories, :users, :offers

  # Replace this with your real tests.
  def test_truth
    assert true
  end
  
  
  def test_sql
    matchingOffers = Offer.find_by_sql("
          select * from offers o where exists (
            select * from categories tc where
              tc.parent_id = 2 and tc.id = o.category_id
            )
          ")
          
          matchingOffers.each do |item|
            logger.error("#{item.name}")
          end
          assert true
  end
end
