class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :getQiniuToken

  def getQiniuToken
    Qiniu::RS.generate_upload_token :scope => "songsm",
    :callback_url => "http://192.241.236.55:4000/things/qiniu.json",
    :callback_body => "name=$(fname)&hash=$(etag)&thingID=$(x:thingID)"
  end
end
