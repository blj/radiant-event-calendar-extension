class CalendarsController < ApplicationController

  def index
    Ical.check_refreshments
    @calendars = Calendar.find(:all)
    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @calendars.to_xml }
    end
  end

  def show
    @calendar = Calendar.find(params[:id])
    @year = params[:year] ? params[:year].to_i : Date.today.year
    @month = params[:month] ? params[:month].to_i : Date.today.month
    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @calendar.to_xml }
      format.js  { render :partial => 'month' }
    end
  end
  
  def new
    @calendar = Calendar.new(params[:calendar])
    @calendar.ical = Ical.new
  end

  def edit
    @calendar = Calendar.find(params[:id])
  end

  def create
    @calendar = Calendar.new(params[:calendar])
    @calendar.ical = Ical.new(params[:ical])
    respond_to do |format|
      if @calendar.save
        flash[:notice] = 'Calendar was successfully created.'
        format.html { redirect_to calendars_path }
        format.xml  { head :created }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @calendar.errors.to_xml }
      end
    end
  end

  def update
    @calendar = Calendar.find(params[:id])
    @ical = @calendar.ical
    respond_to do |format|
      if @calendar.update_attributes(params[:calendar]) && @ical.update_attributes(params[:ical])
        flash[:notice] = 'Calendar was successfully updated.'
        format.html { redirect_to calendars_path }
        format.xml { head :ok }
      else
        # flash[:notice]
        format.html { render :action => "edit" }
        format.xml  { render :xml => @calendar.errors.to_xml }
      end
    end
  end

  def destroy
    @calendar = Calendar.find(params[:id])
    @calendar.destroy
    respond_to do |format|
      format.html { redirect_to calendars_path }
      format.xml  { head :ok }
    end
  end
end
