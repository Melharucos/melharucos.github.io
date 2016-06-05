opened = no
$(document).on 'click', '#open-stream', ->
    return if opened
    console.log "Opening stream pane"
    $(".stream-pane").addClass 'animated'
    opened = yes
    setTimeout(->
        $(".stream").addClass "opened"
        $("html, body").animate({scrollTop: $(document).height()}, 1000)
        setTimeout(->
            $iframe = '''
            <iframe src="https://player.twitch.tv/?channel=melharucos" frameborder="0" scrolling="no" width="100%" height="100%"></iframe>
            '''
            $(".stream-pane").prepend($($iframe))
        ,1000)
    ,1000)