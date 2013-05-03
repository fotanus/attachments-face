require 'spec_helper'

describe AttachmentsHelper do
  context 'self' do
    it 'exists' do
      defined?(AttachmentsHelper).should be_true
    end

    it 'is included in action view' do
      ActionView::Base.included_modules.include?(AttachmentsHelper).should be_true
    end
  end

  context '#multiple_attachments' do
    it 'responds to' do
      ActionView::Base.new.respond_to?('multiple_attachments').should be_true
    end

    it 'render _multiple_attachments' do
      ActionView::Base.new.multiple_attachments(:name_test).should render_template('multiple_attachents')
    end

    it 'have wrapper' do
      ActionView::Base.new.multiple_attachments(:name_test).should match /id="attachments-face-name_test"/
    end

    it 'have base' do
      ActionView::Base.new.multiple_attachments(:name_test).should match /class="base"/
    end

    context 'base' do
    end


    context 'new attachment link' do
      it 'output a new attachment link' do
        ActionView::Base.new.multiple_attachments(:name_test).should match /data-new-attachment/
      end
    end
  end
end
