class AndroidController < ApplicationController
  def start
	cmd = 'adb shell am start -a android.intent.action.VIEW -d ' + params['url'] 
        value = %x[#{cmd}]
	response = "{\"message\" : \"Browser Started\"}"
#	response = "{\"message\" : \"#{value}\"}"
	render json: response
  end

  def stop
	cmd = 'adb shell am force-stop com.android.chrome'
        value = %x[#{cmd}]
	response = "{\"message\" : \"Browser Stopped\"}"
#	response = "{\"message\" : \"#{value}\"}"
	render json: response 
  end

  def clean_up
	cmd = 'adb shell pm clear com.android.chrome'
        value = %x[#{cmd}]
	response = "{\"message\" : \"Browser Cleaned\"}"
#	response = "{\"message\" : \"#{value}\"}"
	render json: response 
  end
end
