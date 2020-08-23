require 'test/unit'
require_relative 'with'

# class TestWith
class TestWith < Test::Unit::TestCase
  # class Resource
  class Resource
    def dispose
      @disposed = true
    end

    def disposed?
      @disposed
    end
  end

  def test_disposes_of_resources
    r = Resource.new
    with(r) {}
    assert r.disposed?
  end

  def test_disposes_of_resources_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) {
      with(r) {
        raise Exception
      }
    }
    assert r.disposed?
  end
end

TestWith.new('test_disposes_of_resources')
# t.test_disposes_of_resources
# t.test_disposes_of_resources_in_case_of_exception
