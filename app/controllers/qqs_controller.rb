class QqsController < ApplicationController
  # GET /qqs
  # GET /qqs.xml
  def index
    @qqs = Qq.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @qqs }
    end
  end

  # GET /qqs/1
  # GET /qqs/1.xml
  def show
    @y_url = params[:url]
    @y_size = params[:size] || 2
    content = render_to_string :partial => 'show', :layout=> false
    render :update do |page|
      page.replace_html 'qrcode', content
    end
  end

  # GET /qqs/new
  # GET /qqs/new.xml
  def new
    @qq = Qq.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @qq }
    end
  end

  # GET /qqs/1/edit
  def edit
    @qq = Qq.find(params[:id])
  end

  # POST /qqs
  # POST /qqs.xml
  def create
    @qq = Qq.new(params[:qq])

    respond_to do |format|
      if @qq.save
        format.html { redirect_to(@qq, :notice => 'Qq was successfully created.') }
        format.xml  { render :xml => @qq, :status => :created, :location => @qq }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @qq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /qqs/1
  # PUT /qqs/1.xml
  def update
    @qq = Qq.find(params[:id])

    respond_to do |format|
      if @qq.update_attributes(params[:qq])
        format.html { redirect_to(@qq, :notice => 'Qq was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @qq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /qqs/1
  # DELETE /qqs/1.xml
  def destroy
    @qq = Qq.find(params[:id])
    @qq.destroy

    respond_to do |format|
      format.html { redirect_to(qqs_url) }
      format.xml  { head :ok }
    end
  end
end
