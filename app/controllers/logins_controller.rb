class LoginsController < ApplicationController

  require 'faraday'
  require 'awesome_print'

  def index
    EaSession.all.each {|session| session.destroy }
    @login = Login.new
  end

  def create

    @login = Login.new(params[:login])

    @current_session = EaUrls.login(@login)

    redirect_to :searches

  end

end
