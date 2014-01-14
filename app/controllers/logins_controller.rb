class LoginsController < ApplicationController

  require 'faraday'
  require 'awesome_print'

  def index
    @login = Login.new
  end

  def create

    EaSession.all.each {|session| session.destroy }
    @login = Login.new(params[:login])

    @current_session = EaUrls.login(@login)

    redirect_to :searches

  end

end
