require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    # assert_template 'static_pages/home'   #检查是否使用正确的视图渲染
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path #检查是否有指定的标签<a href="/about">...</a>
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
    end
end
