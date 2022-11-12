class Admin::StaffEventsController < Admin::Base

  def index # リソースがネストされている場合とネストされてない場合をif文で分けてる
    if params[:staff_member_id]
      @staff_member = StaffMember.find(params[:staff_member_id])
      # @events = @staff_member.events.order(occurred_at: :desc)
      @events = @staff_member.events
    else
      # @events = StaffEvent.order(occurred_at: :desc)
      @events = StaffEvent
    end
    @events =
      @events.order(occurred_at: :desc).includes(:member).page(params[:page])
    # @events = @events.includes(:member)
    # @events = @events.page(params[:page])
  end
end
