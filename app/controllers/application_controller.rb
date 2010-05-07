class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  before_filter :authorize_contoyo

  def authorize_contoyo
    Contoyo.authorized = true
  end
end
