require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  test 'site can be initialised' do

    assert_nothing_raised do
      Site.new
    end
  end
end
