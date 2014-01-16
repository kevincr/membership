class MembersController < ApplicationController

  def new
    @member = Member.new
  end

  def create
    #render text: params[:member].inspect
    @member = Member.new(member_params)

    puts @member.name

    if @member.save
      redirect_to @member
    else
      render new
    end
  end

  def destroy

  end

  def index
    @members = Member.all
  end

  def edit

  end

  def show
    @member = Member.find(params[:id])
  end
  private
  def member_params
    params.require(:member).permit(:name,:active,:is_member,:join_date)
  end


end
