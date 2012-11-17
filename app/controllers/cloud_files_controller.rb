class CloudFilesController < ApplicationController
  # GET /cloud_files
  # GET /cloud_files.json
  def index
    @cloud_files = CloudFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cloud_files }
    end
  end

  # GET /cloud_files/1
  # GET /cloud_files/1.json
  def show
    @cloud_file = CloudFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cloud_file }
    end
  end

  # GET /cloud_files/new
  # GET /cloud_files/new.json
  def new
    @cloud_file = CloudFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cloud_file }
    end
  end

  # GET /cloud_files/1/edit
  def edit
    @cloud_file = CloudFile.find(params[:id])
  end

  # POST /cloud_files
  # POST /cloud_files.json
  def create
    @cloud_file = CloudFile.new(params[:cloud_file])

    @cloud_file.client_id = current_client.id

    respond_to do |format|
      if @cloud_file.save
        format.html { redirect_to "/home", notice: 'Cloud file was successfully created.' }
        format.json { render json: @cloud_file, status: :created, location: @cloud_file }
      else
        format.html { render action: "new" }
        format.json { render json: @cloud_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cloud_files/1
  # PUT /cloud_files/1.json
  def update
    @cloud_file = CloudFile.find(params[:id])

    respond_to do |format|
      if @cloud_file.update_attributes(params[:cloud_file])
        format.html { redirect_to @cloud_file, notice: 'Cloud file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cloud_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloud_files/1
  # DELETE /cloud_files/1.json
  def destroy
    @cloud_file = CloudFile.find(params[:id])
    @cloud_file.destroy

    respond_to do |format|
      format.html { redirect_to cloud_files_url }
      format.json { head :no_content }
    end
  end
end
