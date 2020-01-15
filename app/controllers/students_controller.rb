class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
    # byebug
    @student = Student.create(
      first_name: params[:first_name], 
        last_name: params[:last_name]
    )
    redirect_to student_path(@student)
  end


end

# describe StudentsController do

#   describe "POST create" do
#     context "with valid attributes" do
#       it "creates a new student" do
#         expect{
#           post :create, params: { :first_name => "Sam", :last_name => "Smith" }
#         }.to change(Student,:count).by(1)
#       end

#       it "redirects to the new student" do
#         post :create, params: { :first_name => "Sam", :last_name => "Smith" }
#         expect(response).to redirect_to Student.last
#       end
#     end
#   end
