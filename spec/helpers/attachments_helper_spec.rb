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

    context 'input tag' do
      it 'output one input tag' do
        ActionView::Base.new.multiple_attachments(:name_test).should match /<input/
      end

      it 'is a file tag' do
        ActionView::Base.new.multiple_attachments(:name_test).should match /type="file"/
      end

      it 'has the name as a list' do
        ActionView::Base.new.multiple_attachments(:name_test).should match /name="name_test\[\]"/
      end
    end

    context 'new attachment link' do
      it 'output a new attachment link' do
        ActionView::Base.new.multiple_attachments(:name_test).should match /data-new-attachment/
      end
    end

    context 'remove attachment link' do
      it "don't output a remove link" do
        ActionView::Base.new.multiple_attachments(:name_test).should_not match /data-remove-attachment/
      end
    end
  end
end
