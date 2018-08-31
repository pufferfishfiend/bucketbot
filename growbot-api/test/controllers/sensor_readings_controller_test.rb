require 'test_helper'

class SensorReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor_reading = sensor_readings(:one)
  end

  test "should get index" do
    get sensor_readings_url, as: :json
    assert_response :success
  end

  test "should create sensor_reading" do
    assert_difference('SensorReading.count') do
      post sensor_readings_url, params: { sensor_reading: { type: @sensor_reading.type, value: @sensor_reading.value } }, as: :json
    end

    assert_response 201
  end

  test "should show sensor_reading" do
    get sensor_reading_url(@sensor_reading), as: :json
    assert_response :success
  end

  test "should update sensor_reading" do
    patch sensor_reading_url(@sensor_reading), params: { sensor_reading: { type: @sensor_reading.type, value: @sensor_reading.value } }, as: :json
    assert_response 200
  end

  test "should destroy sensor_reading" do
    assert_difference('SensorReading.count', -1) do
      delete sensor_reading_url(@sensor_reading), as: :json
    end

    assert_response 204
  end
end
