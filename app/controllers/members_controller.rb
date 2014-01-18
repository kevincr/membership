class MembersController < ApplicationController

  def new
    @member = Member.new
    @contact = Contact.new

  end

  def create
    #render text: params[:member].inspect
    @member = Member.new(member_params)

      if @member.save
        redirect_to @member
      else
        render new
      end
    Rails.logger = Logger.new(STDOUT)
    logger.debug "Members info----- : "
    logger.debug params[member_params[:contact]]
    logger.debug "End Members info ----:"

    @contact = Contact.new(member_params[:contact])
    if @contact.save
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
    Rails.logger = Logger.new(STDOUT)
    logger.debug "Members info----- : "
    logger.debug params[:member]
    logger.debug "End Members info ----:"
    params.require(:member).permit(:name,:active,:is_member,:join_date,:contacts)
    #params.require(:member).permit(:name,:active,:is_member,:join_date)
  end


end
