$(document).on "turbolinks:load", ->
  $('input[type=radio][name="[cryteria_level]"]').change ->
    op = $('input[type=radio][name="[cryteria_level]"]:checked').val()
    $.ajax
      type:'GET'
      url:'/code_tasks/dataTable'
      data:
        code_task:
          cryteria: op
      success: (data) ->
        $('#showData').empty()
        $('#showData').html(data)
      error: (data) ->
        alert data

  $tableH = $('#codeTbl')
  #alert $tableH.text()
  $tableH.on 'click', 'td', ->
      alert $(this).text()
#este ejemplo funciona bien solo hay que adaptarlo
# <table>
#   <tr>
#      <td>ID</td>
#      <td>Name</td>
#      <td>Age</td>
#   </tr>
#   <tr>
#       ...
#   </tr>
# </table>
# $('table').click(function(){
# var index = $('td:contains("Age")').index();
# alert(index);

# });
