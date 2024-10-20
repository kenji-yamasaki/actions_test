require 'test/unit'
require "./ruby/src/calc"

class TestCalc < Test::Unit::TestCase
  class << self
    # テスト群の実行前に呼ばれる．変な初期化トリックがいらなくなる
    def startup
      p :_startup
    end

    # テスト群の実行後に呼ばれる
    def shutdown
      p :_shutdown
    end
  end

  # 毎回テスト実行前に呼ばれる
  def setup
    p :setup
    @calc = Calc.new
  end

  # テストがpassedになっている場合に，テスト実行後に呼ばれる．テスト後の状態確認とかに使える
  def cleanup
    p :cleanup
  end

  # 毎回テスト実行後に呼ばれる
  def teardown
    p :treadown
  end

  def test_even
    p :test_even
    @calc.evenOrOdd(2)
  end

  def test_odd
    p :test_odd
    @calc.evenOrOdd(3)
  end
end