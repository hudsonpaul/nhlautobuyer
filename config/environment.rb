# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Nhlbuyer::Application.initialize!

class NilClass
  def ea_id
    return -1
  end

  def name
    return ''
  end
end
