class AsksController < ApplicationController
  
 def new 
   @ask = Ask.new
 end

  def check

   
    @ask = Ask.new(ask_params)
    if @ask.save
      render "check"
    else
      render :new
    end


  end

  def thanks
    @ask = Ask.new(ask_params)
    AskMailer.get_email(@ask).deliver_now
  end


  private

    def ask_params
      params.require(:ask).permit(:name, :email, :relationship, :content)
    end

end
