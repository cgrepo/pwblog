$(document).on "turbolinks:load", ->
    $tableH = $('#codeTbl')
    alert $tableH.text()
    $tableH.on 'click', 'td', ->
      alert $(this).text()