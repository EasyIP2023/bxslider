require 'test_helper'

class BxsliderTest < Minitest::Test
  attr_accessor :output_buffer

  include ActionView::Helpers::TagHelper
  include BxsliderHelper

  def test_with_content_tag_options
    assert_match 'class="foo', bx_slider(class: "foo")
  end

  def test_automatically_includes_bxslider_class
    assert_match 'class="bxslider"', bx_slider
  end

  def test_with_a_block
    assert_match 'foo', bx_slider { "foo" }
  end

  def test_with_options_and_block
    expected = '<ul class="bxslider">Bar</ul>'
    assert_equal expected, bx_slider { "Bar" }
  end
end
