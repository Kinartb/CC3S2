require 'minitest/autorun'

class MiniTestSample4Test < Minitest::Test
  def self.before_all
    puts '**--- JUnit5Sample4Test :: beforeAll :: Executed once before all test methods ---**'
  end

  def setup
    puts '**--- JUnit5Sample4Test :: beforeEach :: Executed before each test method ---**'
  end

  def teardown
    puts '**--- JUnit5Sample4Test :: afterEach :: Executed after each test method ---**'
  end

  def self.after_all
    puts '**--- JUnit5Sample4Test :: afterAll :: Executed after all test methods ---**'
  end

  class InnerClass < MiniTestSample4Test
    def setup
      puts '**--- InnerClass :: beforeEach :: Executed before each test method ---**'
    end

    def teardown
      puts '**--- InnerClass :: afterEach :: Executed after each test method ---**'
    end

    def test_method1
      puts '**--- InnerClass :: testMethod1 :: Executed test method1 ---**'
    end

    class InnerMostClass < InnerClass
      def setup
        puts '**--- InnerMostClass :: beforeEach :: Executed before each test method ---**'
      end

      def teardown
        puts '**--- InnerMostClass :: afterEach :: Executed after each test method ---**'
      end

      def test_method2
        puts '**--- InnerMostClass :: testMethod2 :: Executed test method2 ---**'
      end
    end
  end

  def test_illegal_argument_exception
    exception = assert_raises(IllegalArgumentException) do
      raise ArgumentError, 'Illegal Argument Exception occurred'
    end
    assert_equal 'Illegal Argument Exception occurred', exception.message
  end
end
