class Api::V1::ReportsController < ApplicationController
  before_action :load_comment
  # this will either return project or nil if not found or params are not there
  def load_comment
  @comment = Comment.find_by(id: params[:comment_id])
  end

  # GET /api/v1/reports
  def index
    @reports = @comment ? @comment.reposts : Report.all
    render json: @reports
  end

  # POST /api/v1/reports
  def create
    @report = Report.new(report_params)

    if @report.save
      render json: @report, status: :created, location: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def report_params
      params.require(:report).permit(:comment_id, :toreport)
    end
end
