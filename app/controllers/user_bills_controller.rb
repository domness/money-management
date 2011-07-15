class UserBillsController < ApplicationController
  
  before_filter :admin_required
  
  # GET /user_bills
  # GET /user_bills.xml
  def index
    @user_bills = UserBill.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_bills }
    end
  end

  # GET /user_bills/1
  # GET /user_bills/1.xml
  def show
    @user_bill = UserBill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_bill }
    end
  end

  # GET /user_bills/new
  # GET /user_bills/new.xml
  def new
    @user_bill = UserBill.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_bill }
    end
  end

  # GET /user_bills/1/edit
  def edit
    @user_bill = UserBill.find(params[:id])
  end

  # POST /user_bills
  # POST /user_bills.xml
  def create
    
    
    if params[:user_bill][:user_id] == ""
      @users = User.all
      @users.each do |user|
        @user_bill = UserBill.new(
          :paid => params[:user_bill][:paid], 
          :bill_id => [params[:user_bill][:bill_id]],
          :user_id => user.id
        )
        @user_bill.save
      end
    else
      @user_bill = UserBill.new(params[:user_bill])
      @user_bill.save
    end

    # respond_to do |format|
    #   if @user_bill.save
    #     format.html { redirect_to(@user_bill, :notice => 'User bill was successfully created.') }
    #     format.xml  { render :xml => @user_bill, :status => :created, :location => @user_bill }
    #   else
    #     format.html { render :action => "new" }
    #     format.xml  { render :xml => @user_bill.errors, :status => :unprocessable_entity }
    #   end
    # end
    
    redirect_to(@user_bill, :notice => 'User bill was successfully created.')
  end

  # PUT /user_bills/1
  # PUT /user_bills/1.xml
  def update
    @user_bill = UserBill.find(params[:id])

    respond_to do |format|
      if @user_bill.update_attributes(params[:user_bill])
        format.html { redirect_to(@user_bill, :notice => 'User bill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_bill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_bills/1
  # DELETE /user_bills/1.xml
  def destroy
    @user_bill = UserBill.find(params[:id])
    @user_bill.destroy

    respond_to do |format|
      format.html { redirect_to(user_bills_url) }
      format.xml  { head :ok }
    end
  end
end
