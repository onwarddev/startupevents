# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).closest('.field').remove()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    if $(".field").length < 3
    	time = new Date().getTime()
	    regexp = new RegExp($(this).data('id'), 'g')
	    $(this).before($(this).data('fields').replace(regexp, time))
	    event.preventDefault()
    else
    	alert('You can try 3 fields max')
    
    
