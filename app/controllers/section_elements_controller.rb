class SectionElementsController < ApplicationController
  before_action :get_section
  before_action :get_sections, only: [:new, :create, :edit, :update]
  before_action :set_section_element, only: [:show, :edit, :update, :destroy]

  def index
    @section_elements = SectionElement.all
  end

  def show
  end

  def edit
  end

  def create
    @section_element = @section.section_elements.create(section_element_params)

    respond_to do |format|
      if @section_element.save
        format.html { redirect_to @section, notice: 'Section element was successfully created.' }
        format.json { render :show, status: :created, location: @section_element }
      else
        format.html { render :new }
        format.json { render json: @section_element.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @section_element.update(section_element_params)
        format.html { redirect_to @section, notice: 'Section element was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_element }
      else
        format.html { render :edit }
        format.json { render json: @section_element.errors, status: :unprocessable_entity }
      end
    end
  end

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
      @section_element = @section.section_elements.find(params[:id])
    end

    def get_sections
      @sections = Section.all.map{|s| [s.name, s.id]}
    end

    def get_section
      @section = Section.find(params[:section_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_element_params
      params.require(:section_element).permit(:title, :content, :section_id, :visibility)
    end
end
