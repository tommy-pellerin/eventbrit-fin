class Admin::EventSubmissionsController < ApplicationController
  
  # GET /event_submissions or /event_submissions.json
  def index
    @event_submissions = EventSubmission.all
  end

  # GET /event_submissions/1 or /event_submissions/1.json
  # def show
  #   @event_submission = EventSubmission.find(params[:id])
  # end

  # # GET /event_submissions/new
  # def new
  #   @event_submission = EventSubmission.new
  # end

  # GET /event_submissions/1/edit
  def edit
    @event_submission = EventSubmission.find(params[:id])
  end

  # # POST /event_submissions or /event_submissions.json
  # def create
  #   @event_submission = EventSubmission.new(event_submission_params)

  #   respond_to do |format|
  #     if @event_submission.save
  #       format.html { redirect_to event_submission_url(@event_submission), notice: "Event submission was successfully created." }
        
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /event_submissions/1 or /event_submissions/1.json
  def update
    # puts "$"*50
    # puts params    
    # puts "$"*50
    # @event_submission = EventSubmission.find(params[:id])
    # if @event_submission.update(validated:true,reviewed:true)
    #   format.html { redirect_to event_submission_url(@event_submission), notice: "Event submission was successfully updated." }
      
    # else
    #   format.html { render :edit, status: :unprocessable_entity }
    # end
    
  end

  def accept_event
    puts "$"*50
    puts params    
    puts "$"*50
    @event_submission = EventSubmission.find(params[:id])
    @event_submission.update(validated:true, reviewed:true)
    render 'edit', notice: 'Event accepté avec succès.'
  end

  def reject_event
    @event_submission = EventSubmission.find(params[:id])
    @event_submission.update(validated:false, reviewed:true)
    render 'edit', notice: 'Event refusé.'
  end

  # # DELETE /event_submissions/1 or /event_submissions/1.json
  # def destroy
  #   @event_submission.destroy!

  #   respond_to do |format|
  #     format.html { redirect_to event_submissions_url, notice: "Event submission was successfully destroyed." }
      
  #   end
  # end

  private
   
end
