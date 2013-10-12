class exports.Page extends lt3.Page
  template: ->
    div class: "tutorial-page font-#{@font}", ->
      if @title
        h2 class: 'title', ->
          @title
      if @description
        p class: 'description', ->
          @description
      
      if @steps
        div class: 'steps', ->
          for step in @steps
            div class: 'step', ->
              if step.title
                h2 class: 'title', ->
                  step.title
              if step.content
                div class: 'content', ->
                  step.content
