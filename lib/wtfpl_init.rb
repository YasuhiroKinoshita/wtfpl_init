require "wtfpl_init/version"
require "wtfpl_init/cli"
require "open-uri"


module WtfplInit
  WTFPL_PLAIN_TEXT_URI = 'http://www.wtfpl.net/txt/copying/'

  def self.fetch
    URI.parse(self::WTFPL_PLAIN_TEXT_URI).read
  end
end
