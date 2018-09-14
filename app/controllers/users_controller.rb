class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:info]
  def info
  end
end
