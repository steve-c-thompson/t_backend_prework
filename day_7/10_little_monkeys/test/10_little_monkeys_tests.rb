require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/num_to_english'
require './lib/10_little_monkeys'

class MonkeyRhymeTest < MiniTest::Test

  def test_translate_num_to_String_hardcoded_single_and_tens_values
    monkey = MonkeyRhyme.new
    assert_equal("One", monkey.translate_num_to_String(1))
    assert_equal("Two", monkey.translate_num_to_String(2))
    assert_equal("Three", monkey.translate_num_to_String(3))
    assert_equal("Four", monkey.translate_num_to_String(4))
    assert_equal("Five", monkey.translate_num_to_String(5))
    assert_equal("Six", monkey.translate_num_to_String(6))
    assert_equal("Seven", monkey.translate_num_to_String(7))
    assert_equal("Eight", monkey.translate_num_to_String(8))
    assert_equal("Nine", monkey.translate_num_to_String(9))
    assert_equal("Ten", monkey.translate_num_to_String(10))
    assert_equal("Eleven", monkey.translate_num_to_String(11))
    assert_equal("Twelve", monkey.translate_num_to_String(12))
    assert_equal("Thirteen", monkey.translate_num_to_String(13))
    assert_equal("Fourteen", monkey.translate_num_to_String(14))
    assert_equal("Fifteen", monkey.translate_num_to_String(15))
    assert_equal("Sixteen", monkey.translate_num_to_String(16))
    assert_equal("Seventeen", monkey.translate_num_to_String(17))
    assert_equal("Eighteen", monkey.translate_num_to_String(18))
    assert_equal("Nineteen", monkey.translate_num_to_String(19))
    assert_equal("Twenty", monkey.translate_num_to_String(20))
    assert_equal("Thirty", monkey.translate_num_to_String(30))
    assert_equal("Forty", monkey.translate_num_to_String(40))
  end

  def test_translate_num_to_String_mixed_tens
    monkey = MonkeyRhyme.new
    assert_equal("Twenty-one", monkey.translate_num_to_String(21))
  end

  def test_translate_num_to_String_hundred_values
    monkey = MonkeyRhyme.new
    assert_equal("One hundred", monkey.translate_num_to_String(100))
    assert_equal("Two hundred", monkey.translate_num_to_String(200))
    assert_equal("Nine hundred", monkey.translate_num_to_String(900))
  end

  def test_translate_num_to_String_thousand_values
    monkey = MonkeyRhyme.new
    assert_equal("One thousand", monkey.translate_num_to_String(1000))
    assert_equal("Two thousand", monkey.translate_num_to_String(2000))
    assert_equal("Nine thousand", monkey.translate_num_to_String(9000))
    assert_equal("Twenty thousand", monkey.translate_num_to_String(20000))
  end

  def test_translate_num_to_String_thousand_plus_values
    monkey = MonkeyRhyme.new
    assert_equal("Twenty-one thousand", monkey.translate_num_to_String(21000))
  end

  def test_translate_num_to_String_hundred_and_thirty
    monkey = MonkeyRhyme.new
    assert_equal("One hundred thirty", monkey.translate_num_to_String(130))
  end

  def test_translate_num_to_String_two_hundred_thirty_one
    monkey = MonkeyRhyme.new
    assert_equal("Two hundred thirty-one", monkey.translate_num_to_String(231))
  end

  def test_translate_num_to_String_hundred_and_seventeen
    monkey = MonkeyRhyme.new
    assert_equal("One hundred seventeen", monkey.translate_num_to_String(117))
  end

  def test_translate_num_to_String_hundred_thirty_five
    monkey = MonkeyRhyme.new
    #assert_equal("One hundred and thirty five", monkey.translate_num_to_String(135))
  end

end
