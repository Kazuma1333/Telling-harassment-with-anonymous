class AsksController < ApplicationController
  
 def new 
   @ask = Ask.new
 end

  def check

    # ==========ここから追加==========
    @ask = Ask.new(ask_params)
    if @ask.save
      render "check"
    else
      render :new
    end
    # ==========ここまで追加==========

  end

  def thanks
    @ask = Ask.new(ask_params)
    AskMailer.get_email(@ask).deliver_now
  end

  # ==========ここから追加==========
  private

    def ask_params
      params.require(:ask).permit(:name, :email, :relationship, :content)
    end
  # ==========ここまで追加==========

end