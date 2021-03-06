require 'net/http'
require 'json'

class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    # deactivative CSRF token authenticity

    def contact_python(dict = {})
        uri = URI('http://localhost:' + $BACKBACKENDPORT.to_s)
        res = Net::HTTP.post_form(uri, 'data' => dict.to_json)
        return JSON.parse(res.body)
    end

    def getUserJSON
        render json: {data: User.all}, status: :ok
    end

    def getCurrentUser
        if !current_user
            redirect_to new_user_session_path
            return User.new
        else
            return User.find_by(id: current_user.id)
        end
    end

    def getCourses
        puts("inside getCourses\n")
        temp = File.open("#{Rails.root}/mlModel/Courses/output.json").read # relative to current location of file
        # render :json => temp
        data = JSON.parse(temp)
        @courseAbbreviationsAndNames = Hash.new
        data.sort.map do |k, v|
            @courseAbbreviationsAndNames[k] = v
        end


        @courseAbbreviationsAndNames.each do |k, v|
            # puts "key: #{k}"
            # puts("----------------------------------------\n")
            # v.each do |array|
            #     puts "#{array[0]}, #{array[1]}"
            # end
        end
        
        puts("----------------------------------------\n")

      end

      def after_sign_in_path_for(resource)
            profile_path
      end

      
end
