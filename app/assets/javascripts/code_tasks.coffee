$(document).on "turbolinks:load", ->
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
