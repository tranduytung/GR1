jQuery ->
  $(document).on 'focus', '.year-search', (event) ->
    $(this).datetimepicker({
      format: 'YYYY',
      viewMode: 'years',
      widgetPositioning: {
        horizontal: 'left',
        vertical: 'bottom'
      }
      showTodayButton: true,
      showClear: true,
    calendarWeeks: true,
    keyBinds: false,
    focusOnShow: false

    })
    event.preventDefault()

  $(document).on 'focus', '.date-search', (event) ->
    $(this).datetimepicker({
      format: 'DD/MM/YYYY',
      viewMode: 'days',
      widgetPositioning: {
        horizontal: 'left',
        vertical: 'bottom'
      }
      showTodayButton: true,
      showClear: true,
    calendarWeeks: true,
    keyBinds: false,
    focusOnShow: false

    })
    event.preventDefault()
