module Api::V1
	class SensorReadingsController < ApplicationController
		before_action :set_sensor_reading, only: [:show, :update, :destroy]

		# GET /sensor_readings
		def index
			@sensor_readings = SensorReading.all

			render json: @sensor_readings
		end

		# GET /sensor_readings/1
		def show
			render json: @sensor_reading
		end

		# POST /sensor_readings
		def create
			@sensor_reading = SensorReading.new(sensor_reading_params)

			if @sensor_reading.save
				render json: @sensor_reading, status: :created, location: @sensor_reading
			else
				render json: @sensor_reading.errors, status: :unprocessable_entity
			end
		end

		# PATCH/PUT /sensor_readings/1
		def update
			if @sensor_reading.update(sensor_reading_params)
				render json: @sensor_reading
			else
				render json: @sensor_reading.errors, status: :unprocessable_entity
			end
		end

		# DELETE /sensor_readings/1
		def destroy
			@sensor_reading.destroy
		end

		private
			# Use callbacks to share common setup or constraints between actions.
			def set_sensor_reading
				@sensor_reading = SensorReading.find(params[:id])
			end

			# Only allow a trusted parameter "white list" through.
			def sensor_reading_params
				params.require(:sensor_reading).permit(:type, :value)
			end
	end
end
