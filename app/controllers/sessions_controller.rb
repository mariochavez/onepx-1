class SessionsController < ApplicationController
  def new
    @identity = Identity.new
  end

  def create
    warden.authenticate!(scope: :identity)
    redirect_to root_url, notice: t('.logged_in')
  end

  def destroy
    warden.logout(:identity)
    redirect_to root_url, notice: t('.logged_out')
  end
end

