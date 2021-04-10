require 'twilio-ruby'

class TwilioApi

  def initialize
    account_sid = ENV["TWILIO_ACCOUNT_SSD"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def message(number)
    @client.messages.create(
      from: ENV["TWILIO_PHONE_NUMBER"],
      to: number,
      body: "Hi there! Your order is on its' way!"
    )
  end

end