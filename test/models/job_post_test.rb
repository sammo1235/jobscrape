require 'test_helper'

class JobPostTest < ActiveSupport::TestCase
  test 'job post can be initialised' do

    assert_nothing_raised do
      JobPost.new
    end
  end
end
