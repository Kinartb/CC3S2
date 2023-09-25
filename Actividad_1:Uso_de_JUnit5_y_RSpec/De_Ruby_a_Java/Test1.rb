require 'minitest/autorun'

class MiniTestSample1Test < MiniTest::Test
  def self.before_suite
    puts '**--- Executed once before all test methods in this class ---**'
  end

  def setup
    puts '**--- Executed before each test method in this class ---**'
  end

  def test_method1
    puts '**--- Test method1 executed ---**'
  end

  def test_method2
    puts '**--- Test method2 executed ---**'
  end

  def test_method3
    skip('implementation pending')
    puts '**--- Test method3 executed ---**'
  end

  def teardown
    puts '**--- Executed after each test method in this class ---**'
  end

  def self.after_all
    puts '**--- Executed once after all test methods in this class ---**'
  end
end
