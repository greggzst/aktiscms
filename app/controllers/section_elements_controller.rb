class SectionElementsController < ApplicationController
  before_action :get_sections, only: :new
  before_action :set_section_element, only: [:show, :edit, :update, :destroy]

  # GET /section_elements
  # GET /section_elements.json
  def index
    @section_elements = SectionElement.all
  end

  # GET /section_elements/1
  # GET /section_elements/1.json
  def show
  end

  # GET /section_elements/new
  def new
    @section_element = SectionElement.new
  end

  # GET /section_elements/1/edit
  def edit
  end

  # POST /section_elements
  # POST /section_elements.json
  def create
    @section_element = SectionElement.new(section_element_params)

    respond_to do |format|
      if @section_element.save
        format.html { redirect_to @section_element, notice: 'Section element was successfully created.' }
        format.json { render :show, status: :created, location: @section_element }
      else
        format.html { render :new }
        format.json { render json: @section_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_elements/1
  # PATCH/PUT /section_elements/1.json
  def update
    respond_to do |format|
      if @section_element.update(section_element_params)
        format.html { redirect_to @section_element, notice: 'Section element was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_element }
      else
        format.html { render :edit }
        format.json { render json: @section_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_elements/1
  # DELETE /section_elements/1.json
  def destroy
    @section_element.destroy
    respond_to do |format|
      format.html { redirect_to section_elements_url, notice: 'Section element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_element
      @section_element = SectionElement.find(params[:id])
    end

    def get_sections
      @sections = Section.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_element_params
      params.require(:section_element).permit(:title, :content, :section_id)
    end
end
