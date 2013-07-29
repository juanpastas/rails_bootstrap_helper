require 'test_helper'

class RailsBootstrapHelperTest < ActionView::TestCase
  include SimpleForm::ActionViewExtensions::FormHelper
  tests RailsBootstrapHelper::Helper

  def test_status_tag
    assert_equal status_tag("Default"), '<span class="label">Default</span>'
    assert_equal status_tag("Success", level: 'success'), '<span class="label label-success">Success</span>'
    assert_equal status_tag("Warning", level: 'warning'), '<span class="label label-warning">Warning</span>'
    assert_equal status_tag("Important", level: 'important'), '<span class="label label-important">Important</span>'
    assert_equal status_tag("Info", level: 'info'), '<span class="label label-info">Info</span>'
    assert_equal status_tag("Inverse", level: 'inverse'), '<span class="label label-inverse">Inverse</span>'
    assert_equal status_tag("Custom Class", level: 'inverse', class: "custom"), '<span class="label label-inverse custom">Custom Class</span>'
    assert_equal status_tag("Custom ID", level: 'inverse', id: "custom"), '<span class="label label-inverse" id="custom">Custom ID</span>'
  end

  def test_badge_tag
    assert_equal badge_tag("Default"), '<span class="badge">Default</span>'
    assert_equal badge_tag("Success", level: 'success'), '<span class="badge badge-success">Success</span>'
    assert_equal badge_tag("Warning", level: 'warning'), '<span class="badge badge-warning">Warning</span>'
    assert_equal badge_tag("Important", level: 'important'), '<span class="badge badge-important">Important</span>'
    assert_equal badge_tag("Info", level: 'info'), '<span class="badge badge-info">Info</span>'
    assert_equal badge_tag("Inverse", level: 'inverse'), '<span class="badge badge-inverse">Inverse</span>'
    assert_equal badge_tag("Custom Class", level: 'inverse', class: "custom"), '<span class="badge badge-inverse custom">Custom Class</span>'
    assert_equal badge_tag("Custom ID", level: 'inverse', id: "custom"), '<span class="badge badge-inverse" id="custom">Custom ID</span>'
  end

  def test_button_link_to
    assert_equal button_link_to("Default", "http://google.com"), '<a class="btn" href="http://google.com">Default</a>'
    assert_equal button_link_to("Small Button", "http://google.com", size: 'small'), '<a class="btn btn-small" href="http://google.com">Small Button</a>'
    assert_equal button_link_to("Default Success", "http://google.com", level: 'success'), '<a class="btn btn-success" href="http://google.com">Default Success</a>'
    assert_equal button_link_to("Default Small Success", "http://google.com", size: 'small', level: 'success'), '<a class="btn btn-small btn-success" href="http://google.com">Default Small Success</a>'
    assert_equal button_link_to("Custom Class Default Small Success", "http://google.com", class: "custom", size: 'small', level: 'success'), '<a class="btn btn-small btn-success custom" href="http://google.com">Custom Class Default Small Success</a>'
    assert_equal button_link_to("Custom ID Default Small Success", "http://google.com", id: "custom", size: 'small', level: 'success'), '<a class="btn btn-small btn-success" href="http://google.com" id="custom">Custom ID Default Small Success</a>'
  end

  def test_icon_button_link_to
    assert_equal icon_button_link_to("Default", "http://google.com", icon: 'plus'), '<a class="btn" href="http://google.com"><i class="icon-plus"></i> Default</a>'
    assert_equal icon_button_link_to("Small Button", "http://google.com", size: 'small', icon: 'plus'), '<a class="btn btn-small" href="http://google.com"><i class="icon-plus"></i> Small Button</a>'
    assert_equal icon_button_link_to("Default Success", "http://google.com", level: 'success', icon: 'plus'), '<a class="btn btn-success" href="http://google.com"><i class="icon-plus"></i> Default Success</a>'
    assert_equal icon_button_link_to("Default Small Success", "http://google.com", size: 'small', level: 'success', icon: 'plus'), '<a class="btn btn-small btn-success" href="http://google.com"><i class="icon-plus"></i> Default Small Success</a>'
    assert_equal icon_button_link_to("Custom Class Default Small Success", "http://google.com", class: "custom", size: 'small', level: 'success', icon: 'plus'), '<a class="btn btn-small btn-success custom" href="http://google.com"><i class="icon-plus"></i> Custom Class Default Small Success</a>'
    assert_equal icon_button_link_to("Custom ID Default Small Success", "http://google.com", id: "custom", size: 'small', level: 'success', icon: 'plus'), '<a class="btn btn-small btn-success" href="http://google.com" id="custom"><i class="icon-plus"></i> Custom ID Default Small Success</a>'
  end

  def test_percent_input
    assert_match '<div class="input-prepend"><span class="add-on">%</span> <input class="string required" id="foo_name" name="foo[name]" type="text" /></div>', simple_form_for(:foo, url: '') {|f| percent_input(f, :name, "Name") }
    assert_match '<div class="input-append"><input class="string required" id="foo_name" name="foo[name]" type="text" /> <span class="add-on">%</span></div>', simple_form_for(:foo, url: '') {|f| percent_input(f, :name, "Name", append: true) }
  end
  
end
