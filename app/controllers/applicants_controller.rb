class ApplicantsController < ApplicationController
  def new
    @applicant = Applicant.new
  end

  def create
    applicant = Applicant.new(applicant_params)

    if applicant.save
      render 'pages/thanks', flash: "You're entry has been received"
    end
  end

  private

  def applicant_params
    params.require(:applicant).permit(:email, :fullname)
  end
end

