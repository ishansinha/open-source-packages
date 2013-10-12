class exports.App extends lt3.App
  loadPage: (page) ->
    super page
    if page.get('slug').val() == ''
      @$el.find('.back-to-home').hide()
    else
      @$el.find('.back-to-home').show()

  template: ->
    h5 class: 'back-to-home', ->
      a 'data-app': 'home', ->
        'Back to Developer Home'
    div class: 'pages'
