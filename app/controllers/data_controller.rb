

class DataController < ApplicationController
  def new
    @error = false
    if params[:data] && params[:timestamp] && !params[:data].empty? && !params[:timestamp].empty?
      @data = params[:data]
      @time = params[:timestamp] 
      
      table = TimeData.new
      table.data = @data
      table.time = @time.to_i
      table.save
          
    else
      @error = "params missing"
    end
  end
  
  def show
    @records = TimeData.find(:all)
  end
end

