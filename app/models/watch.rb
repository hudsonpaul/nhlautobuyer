class Watch
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'


  def self.do_watch(current_session, trade_id)

    connection = EaUrls.get_connection

    response = connection.get EaUrls.add_watch_url(current_session, trade_id)

    watch_hash = Hash.from_xml(response.body) 
    ap watch_hash

    watch_hash

  end

end

