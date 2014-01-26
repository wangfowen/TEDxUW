class MainController < ApplicationController
  before_action :set_main, only: [:show, :edit, :update, :destroy]

  # GET /mains
  # GET /mains.json
  def index
  end

  def about
  end

  def blog
  end

  def faq
  end

  def organization
  end

  def partners
  end

  def press
  end

  def speakers
  end

  def videos
  end

  def team
  end

  def contact
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = Main.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_params
      params[:main]
    end
end
