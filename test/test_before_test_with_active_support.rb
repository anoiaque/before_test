require 'rubygems'
require 'test/unit'
require 'active_support/test_case'
require 'before_test'

class BeforeTestWithActiveSupportTest < ActiveSupport::TestCase
  
  before_test :test_me, :setup_for_test_me
  
  def test_me
    assert_equal "Cup of tea please", @var
  end
  
  private
  
  def setup_for_test_me
    @var = "Cup of tea please"
  end
  
end