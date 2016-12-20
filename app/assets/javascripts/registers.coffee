jQuery ->
  $(document).on 'click', '.remove_row', (event) ->
    $(this).closest('tr').find('.check-remove').val('1')
    $(this).closest('tr').find('.price').val('1')
    $(this).closest('tr').hide()
    event.preventDefault()

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
