require 'test_helper'

class SearchTest < ActiveSupport::TestCase
  test 'search can be initialised' do

    assert_nothing_raised do
      Search.new
    end
  end
end
