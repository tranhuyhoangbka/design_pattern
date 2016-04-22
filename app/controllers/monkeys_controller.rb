class MonkeysController < ApplicationController
  def show
    @monkey = Monkey.find params[:id]
  end
end
