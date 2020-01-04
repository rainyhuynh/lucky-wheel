@lucky = ->
    $('.start').click -> 
        $('.image img').remove()
        $('.image').append('<img src="/images/start.gif">') 
        $('.start').addClass("disabled")

        setTimeout (->
            # $('.image img').remove()
            # $('.image').append('<img src="/images/lucky_wheel.png">') 
            # $('.image').append("<h1>Helll</h1>")
            # $('.start').removeClass("disabled")
            window.location.href = '/result'

            return
        ), 10000


$(document).on('turbolinks:load', @lucky);