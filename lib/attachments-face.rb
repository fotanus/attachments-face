require 'attachments-face/engine'
require 'attachments_helper'

module AttachmentsFace
end

ActionView::Base.send :include, AttachmentsHelper
