class TattoosController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @tattoos = Tattoo.all
  end

end
