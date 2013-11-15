class SubscriptionsController < ApplicationController
  def new
    plan = Plan.find(params[:plan_id])
    @subscription = plan.subscriptions.build
    p "******************#{@subscription.plan_id}***********************"
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @success = @subscription.save_with_payment
    p"the success params are here #{@success}"
    if @success
      redirect_to @subscription, :notice => "Thank you for subscribing!"
    else
      render :new
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  private
  def subscription_params
    params.require(:subscription).permit!
  end
end