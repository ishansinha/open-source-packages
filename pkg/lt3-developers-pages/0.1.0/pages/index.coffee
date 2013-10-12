class exports.Page extends lt3.Page
  template: ->
    renderItem = (item) ->
      li ->
        if item.link
          a href: item.link, target: '_blank', ->
            span -> item.title
        else if item.page
          a 'data-page': item.page, ->
            span -> item.title
        else
          span -> item.title
        if item.menu
          ul ->
            for subitem in item.menu
              renderItem subitem

    if @menu
      ul class: 'menu', ->
        for item in @menu
          renderItem item

