@lucky = ->
    $('form #save').click -> 
        $('#setting').modal('hide')

    $('.home-path').click -> 
        $('#result-audio').remove()

    $('.lucky-wheel-numbers').click (e) ->
        e.preventDefault()
        
        if $('span').is(':visible')
            $('span').hide() 
            $('.lucky-wheel-numbers').text('Show lucky wheel numbers')
        else
            $('span').show()
            $('.lucky-wheel-numbers').text('Hide lucky wheel numbers')
        
        return

    $('.start').click -> 
        $('.image img').remove()
        $('.image').append('<img src="/images/start.gif">') 
        $('.start').addClass("disabled")

        $('#playaudio')[0].play()

        setTimeout (->
            # $('.image img').remove()
            # $('.image').append('<img src="/images/lucky_wheel.png">') 
            # $('.image').append("<h1>Helll</h1>")
            # $('.start').removeClass("disabled")
            window.location.href = '/result'

            return
        ), 10000


$(document).on('turbolinks:load', @lucky);