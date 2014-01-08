class MembersController < ApplicationController
  def new

  end
  def create
    #render text: params[:member].inspect
    @member = Member.new(member_params)

    @member.save
    redirect_to @member
  end

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end
  private
    def member_params
      params.require(:member).permit(:name,:active,:is_member,:join_date)
    end
end

