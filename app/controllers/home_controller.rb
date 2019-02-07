class HomeController < ApplicationController
  def index
    @text = 'hello'
  end

  def change_qrcode
    @text = params['text']
  end
end
