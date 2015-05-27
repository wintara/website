class KaryawansController < ApplicationController
  before_action :set_karyawan, only: [:show, :edit, :update, :destroy]

  # GET /karyawans
  # GET /karyawans.json
  def index
    @karyawans = Karyawan.all
  end

  # GET /karyawans/1
  # GET /karyawans/1.json
  def show
  end

  # GET /karyawans/new
  def new
    @karyawan = Karyawan.new
  end

  # GET /karyawans/1/edit
  def edit
  end

  # POST /karyawans
  # POST /karyawans.json
  def create
    @karyawan = Karyawan.new(karyawan_params)

    respond_to do |format|
      if @karyawan.save
        format.html { redirect_to @karyawan, notice: 'Karyawan was successfully created.' }
        format.json { render :show, status: :created, location: @karyawan }
      else
        format.html { render :new }
        format.json { render json: @karyawan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karyawans/1
  # PATCH/PUT /karyawans/1.json
  def update
    respond_to do |format|
      if @karyawan.update(karyawan_params)
        format.html { redirect_to @karyawan, notice: 'Karyawan was successfully updated.' }
        format.json { render :show, status: :ok, location: @karyawan }
      else
        format.html { render :edit }
        format.json { render json: @karyawan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karyawans/1
  # DELETE /karyawans/1.json
  def destroy
    @karyawan.destroy
    respond_to do |format|
      format.html { redirect_to karyawans_url, notice: 'Karyawan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karyawan
      @karyawan = Karyawan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def karyawan_params
      params.require(:karyawan).permit(:nip, :nama, :alamat)
    end
end
