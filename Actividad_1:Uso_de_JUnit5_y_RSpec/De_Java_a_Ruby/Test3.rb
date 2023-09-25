require 'minitest/autorun'
require 'time'

class MinitestSample3Test < Minitest::Test
  def test_assume_true
    b = 'A' == 'A'
    skip_unless b
    assert_equal 'Hello', 'Hello'
  end

  def test_assume_true_saturday
    dt = Time.now
    skip_unless dt.wday == 6, 'Test executes only on Saturday'
    puts 'further code will execute only if above assumption holds true'
  end

  def test_assume_false
    b = 'A' != 'A'
    skip if b
    assert_equal 'Hello', 'Hello'
  end

  def test_assume_false_env_prop
    ENV['env'] = 'prod'
    skip if ENV['env'] == 'dev'
    puts 'further code will execute only if above assumption holds true'
  end

  def test_assuming_that
    ENV['env'] = 'test'
    if ENV['env'] == 'test'
      assert_equal 10, 10
      puts 'perform below assertions only on the test env'
    end
    assert_equal 20, 20
    puts 'perform below assertions on all env'
  end
end