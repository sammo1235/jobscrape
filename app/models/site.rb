class Site < ApplicationRecord
  def fetch
    uri = URI url
    req = Net::HTTP::Get.new(uri.path)
    request = Net::HTTP.new(uri.host, uri.port)
    if url.include? 'https'
      request.use_ssl = true
    end
    response = request.request(req)
    if response.is_a? Net::HTTPRedirection
      req = Net::HTTP::Get.new(response['location'])
      response = Net::HTTP.start(uri.host, uri.port) { |http| http.request(req)}
    end
    return response.body
  end

  def get_title
    begin
      var = Nokogiri::HTML(fetch)
      var.css('title').first.content
    rescue StandardError => e
      debugger
    end
  end
end
