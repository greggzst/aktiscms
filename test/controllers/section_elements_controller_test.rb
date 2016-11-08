require 'test_helper'

class SectionElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @section_element = section_elements(:one)
  end

  test "should get index" do
    get section_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_section_element_url
    assert_response :success
  end

  test "should create section_element" do
    assert_difference('SectionElement.count') do
      post section_elements_url, params: { section_element: { content: @section_element.content, section_id: @section_element.section_id, title: @section_element.title } }
    end

    assert_redirected_to section_element_url(SectionElement.last)
  end

  test "should show section_element" do
    get section_element_url(@section_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_section_element_url(@section_element)
    assert_response :success
  end

  test "should update section_element" do
    patch section_element_url(@section_element), params: { section_element: { content: @section_element.content, section_id: @section_element.section_id, title: @section_element.title } }
    assert_redirected_to section_element_url(@section_element)
  end

  test "should destroy section_element" do
    assert_difference('SectionElement.count', -1) do
      delete section_element_url(@section_element)
    end

    assert_redirected_to section_elements_url
  end
end
