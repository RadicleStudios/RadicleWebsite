---
title: Typographic Styles
---

I wonder sometimes how I should mark up and style web content. My current conception has me defining a number of 'classes' 




 It should be simple: I want my code to work for years left alone and returning to make a change should be easy.


 for months and years, and upon coming back, not have to relearn how it all works<span class="sc">HTML</span> and <span class="sc">CSS</span> should have their jurisdictions, the one for semantic content, the other for styling. I avoid JavaScript if I can.


It's not easy: <span class="sc">HTML</span> and <span class="sc">CSS</span>[^html-and-css] specifications are forever changing, user agents[^user-agents] form various interpretations, and the browsers

[^html-and-css]: The 'language' in which web documents are published.
[^user-agents]: A web browser.




I wonder sometimes how to style web content. I have particular desires:

* The html should be clean, semantic, bereft of style declarations.
* The textual content elements should be styled contextually[^contextually].
* Small caps functionality.

To further constrain the scope of this brief discussion, I am here interested only in styling body text, headings, and footnotes.

### Clean <span class="sc">HTML</span>

I really don't like the web publishing technology of <span class="sc">HTML</span> and <span class="sc">CSS</span> because, much like a two-year-old's room full of toys and hand-me-downs, it's hard to keep *clean*. You have to be disciplined and austere; and the best help is simply not having that much stuff. I like my <span class="sc">HTML</span> and <span class="sc">CSS</span> minimal and having clear jurisdictions. In <span class="sc">HTML</span> for instance, there should be as little stylistic declarations as possible. I imagine a completely *semantic* <span class="sc">HTML</span> document, where the <span class="sc">CSS</span> could alone style it; and features that disturb this clean separation I severely scrutinize and usually reject[^reject].

### Contextual Styling

<span class="sc">HTML5</span> brings, <i>inter alia</i>, a different way of thinking about heading elements: An `h1` could be a title if its containing element is `body` or `main`, or some less prominent heading if contained within a sub-section such as an `article`. Employing this paradigm requires the heading tags being styled contextually, so that <i>eg</i> 

[^contextually]: To elucidate; here I refer to elements that accept text content, such as `p`, `h1`, `h2`, <i>etc.</i>, being styled depending on their enclosing scope, so that an `h1` having `main` as parent could look different than an `h1` contained in an `article`. 
[^reject]: <span class="sc">HTML</span> and <span class="sc">CSS</span>, the current state of the web publishing art, is afflicted by tight coupling: everything is so damn *entangled*; The separation I speak of helps mitigate this.




