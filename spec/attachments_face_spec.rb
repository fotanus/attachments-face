require 'spec_helper'

describe AttachmentsFace do
  context 'text_file_input' do
    it 'exists' do
      Rails.application.assets.find_asset("text_file_input.js.coffee").should_not be_nil
    end
  end
end
