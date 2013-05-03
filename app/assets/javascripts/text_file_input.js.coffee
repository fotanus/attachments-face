chooseFileText = "Choose a file"

$(document).ready ->
  $('a[data-new-attachment]').click clickNewAttachment

# Set the click event on new attachments link
clickNewAttachment = () ->
  name = $(this).attr("data-name")
  copyBase = $("#attachments-face-#{name} .base .custom-file-input").clone()
  setEvents(copyBase)
  $("#attachments-face-#{name} .attachments").append(copyBase)


setEvents = (copyBase) ->
  # set events
  copyBase.find('a[data-choose-file]').click () -> $(this).parent().find('input[type=file]').click()
  copyBase.find('a[data-remove-file]').click () -> $(this).parent().remove()
  console.log(copyBase.find('input[type=file]'))
  copyBase.find('input[type=file]').change () ->
    customFileInput = $(this).parent().parent()
    fileNameList = customFileInput.find('.file-name')
    if fileNameList.length > 0
      fileNameList.first().text($(this).val())
    else
      fileName = $('<div class="file-name">'+$(this).val()+'</div>')
      customFileInput.find('a[data-choose-file]').after(fileName)
