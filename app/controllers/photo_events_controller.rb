class PhotoEventsController < ApplicationController
  def create       
    puts "$"*50
    puts params
    puts "Attachement de photo_event à event encours "
    puts "$"*50  
    @event = Event.find(params[:event_id])
    @event.photo_event.attach(params[:photo_event])
    redirect_to(event_path(@event))
  end

  def destroy
    @event = Event.find(params[:event_id])
    @event.photo_event.purge
    redirect_to(event_path(@event), notice: "Votre photo a été supprimée avec succès.")
  end
end
