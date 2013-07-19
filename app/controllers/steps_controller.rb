class StepsController < ApplicationController

before_filter :find_howtolist


  def show
  end

  def new
    @step = @howtolist.steps.build
  end

private
  def find_howtolist
    @howtolist = howtolist.find(params[:howtolist_id])
  end




end
