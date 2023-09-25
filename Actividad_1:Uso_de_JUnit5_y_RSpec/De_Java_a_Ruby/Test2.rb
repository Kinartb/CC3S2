require 'minitest/autorun'

class MinitestSample2Test < Minitest::Test
  def test_assert_equal
    assert_equal("ABC", "ABC")
    assert_equal(20, 20, "optional assertion message")
    assert_equal(2 + 2, 4)
  end

  def test_assert_false
    refute_equal("FirstName".length, 10)
    refute(10 > 20, "assertion message")
  end

  def test_assert_null
    str1 = nil
    str2 = "abc"
    assert_nil(str1)
    refute_nil(str2)
  end

  def test_assert_all
    str1 = "abc"
    str2 = "pqr"
    str3 = "xyz"
    assert_silent do
      assert_equal(str1, "abc")
      assert_equal(str2, "pqr")
      assert_equal(str3, "xyz")
    end
  end

  def test_assert_true
    assert("FirstName".start_with?("F"))
    exception = assert_raises(IllegalArgumentException) do
      raise IllegalArgumentException, "Illegal Argument Exception occurred"
    end
    assert_equal("Illegal Argument Exception occurred", exception.message)
  end
end
