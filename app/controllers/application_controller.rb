class ApplicationController < ActionController::Base
  layout 'metanit'
  protect_from_forgery with: :exception
end
