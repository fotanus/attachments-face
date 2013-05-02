module AttachmentsHelper
  def multiple_attachments(name)
    file_field_tag("#{name}[]") +
    link_to("New attachment", "#", :data => { 'new-attachment' => true })
  end
end
