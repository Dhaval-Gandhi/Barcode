module ApplicationHelper
  def generate_qr(text)
    require 'chunky_png'
    require 'barby'
    require 'barby/barcode'
    require 'barby/barcode/qr_code'
    require 'barby/outputter/png_outputter'

    barcode = Barby::QrCode.new(text, level: :q, size: 1)
    base64_output = Base64.encode64(barcode.to_png({ xdim: 15 }))
    "data:image/png;base64,#{base64_output}"
  end
end
