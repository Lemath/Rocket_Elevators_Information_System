class LeadsController < ApplicationController
  before_action :set_lead, only: %i[ show edit update destroy ]

  # GET /leads or /leads.json
  def index
    @leads = Lead.all
  end

  # GET /leads/1 or /leads/1.json
  def show
  end

  # GET /leads/new
  def new
    @lead = Lead.new
  end

  # GET /leads/1/edit
  def edit
  end

  require 'sendgrid-ruby'
  include SendGrid
  require 'json'

  # POST /leads or /leads.json
  def create
    @lead = Lead.new(lead_params)

    respond_to do |format|
      if @lead.save
        format.html { redirect_to @lead, notice: "Lead was successfully created." }
        format.json { render :show, status: :created, location: @lead }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end

    #Sends an email when it is saved to whoever filled out the contact us form

    puts 'sendgrid'

    from = Email.new(email: 'apexrocketelevators@gmail.com')
    subject = 'Thank you for contacting us!'
    to = Email.new(email: @lead.email)
    content = Content.new(type: 'text/html', value: 'some text here')
    mail = SendGrid::Mail.new(from, subject, to, content)

    contactemail = Personalization.new
    contactemail.add_to(Email.new(email: @lead.email))
    contactemail.add_dynamic_template_data({
      "full_name" => @lead.full_name_contact,
      "project_name" => @lead.project_name
    })
    mail.add_personalization(contactemail)
    mail.template_id = 'd-41b5591acb6a41ae9989d1363275aa5a'

    # puts JSON.pretty_generate(mail.to_jso
    puts mail.to_json
  
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end

  # PATCH/PUT /leads/1 or /leads/1.json
  def update
    respond_to do |format|
      if @lead.update(lead_params)
        format.html { redirect_to @lead, notice: "Lead was successfully updated." }
        format.json { render :show, status: :ok, location: @lead }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1 or /leads/1.json
  def destroy
    @lead.destroy
    respond_to do |format|
      format.html { redirect_to leads_url, notice: "Lead was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.permit(:full_name_contact, :company_name, :email, :phone, :project_name, :project_description, :department, :message, :file, :request_date)
    end
end
