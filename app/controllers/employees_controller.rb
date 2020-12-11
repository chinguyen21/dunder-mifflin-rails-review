class EmployeesController < ApplicationController
  def index
    @employees = Employee.all 
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(post_params(:first_name, :last_name, :alias, :office, :title, :dog_id, :img_url))
    # redirect_to employee_path(@employee)

    if @employee.save
      redirect_to employee_path(@employee)
    else
      render 'new'
    end
  end

  def edit
	  @employee = Employee.find(params[:id])
  end
  
  def update
		@employee = Employee.find(params[:id])
	  @employee.update(post_params(:first_name, :last_name, :alias, :office, :title, :dog_id, :img_url))
	  redirect_to employee_path(@employee)
	end

  private
  def post_params(*arg)
  	params.require(:employee).permit(*arg)
  end 

end
