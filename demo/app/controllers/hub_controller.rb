class HubController < ApplicationController
  def HomePage
    #render('HomePage') Specifies an explicit render
    #redirect_to(:controller => 'hub', :action => 'HomePage')
  end

  def AddPage
    #render('AddPage')
    #redirect_to(:controller => 'hub', :action => 'HomePage')
    @id = params[:id]
    num = Integer(@id)
    if num < 1 
      @woah = "Less than 1"
    elsif num < 5
      @woah = "Less than 5"
    else 
      @woah = "Greater than 5!"
    end
  end

  def create
  end
 
  def UpdatePage
  end

  def DetailsPage
  end

  def DeletePage
  end

  def destroy
  end
end
