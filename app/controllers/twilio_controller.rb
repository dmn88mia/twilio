class TwilioController < ApplicationController

	def index
	end

	def send_sms
       url = params[:image]
       message = params[:message]
       number = params[:number]
       account_sid = 'AC3068d761e434f92ebfacf01830a8532f'
       auth_token = '449324ba724803324771cf55fc4e8ed3'
    
       @client = Twilio::REST::Client.new account_sid, auth_token
    
      @message = @client.account.messages.create({:to => "+1"+"#{number}",
                                      :media_url => "#{url}",
                                      :from => "+16692362491",
                                       :body => "#{message}"})
       redirect_to '/'
      end

end
