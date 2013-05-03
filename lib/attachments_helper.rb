module AttachmentsHelper
  def multiple_attachments(name)
    render :partial => 'attachments_face/multiple_attachments', :locals => {:name => name}
  end
end
