class exports.Page extends lt3.Page
  template: ->
    div class: "simple-page font-#{@font}", ->
      renderItem = (item) ->
        div class: 'item', ->
          if item.title
            h2 ->
              if item.link
                a href: item.link, target: '_blank', ->
                  item.title
              else
                item.title
          if item.description
            p -> item.description
          if item.links
            ul ->
              for subitem in item.links
                li ->
                  renderItem subitem

      renderItem @
