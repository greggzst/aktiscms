class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy, :change_visibility]

  def list
    @sections = Section.all.select {|s| s.visibility}
  end

  def index
    @sections = Section.all
  end

  def show
  end

  def new
    @section = Section.new
  end

  def edit
  end

  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: 'Section was successfully created.' }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to @section, notice: 'Section was successfully updated.' }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to sections_url, notice: 'Section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  #changing section visibility
  def change_visibility
    if @section.visibility?
      @section.section_elements.each do |element|
        element.visibility = false
        element.save
      end
    else
      @section.section_elements.each do |element|
        element.visibility = true
        element.save
      end
    end
    @section.visibility = !@section.visibility

    @section.save
    redirect_to sections_url, notice: "Section #{@section.name} visibility was changed" 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:name,:visibility)
    end
end
