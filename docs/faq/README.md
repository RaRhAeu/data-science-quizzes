---
sidebar: auto
---
# FAQ

This section will contain frequently asked questions as well as some basic tutorial on how to get started.

## Can I contribute to the project?

Yes, see the sections below on how to get started. However pull requests will be carefully reviewed before merging.

## What do I need to get started?

Assumed you have git already installed, as well as anything on your mind that you want to share, simply run the command below:


```bash
$ git clone https://github.com/RaRhAeu/data-science-quizzes
```


navigate to the `/docs/books/`, create new folder, and start by writing a new `.md` file.
Remember to add new book to  `books/README.md`.
Submit a pull request, and... thats it!


## How do I create a quiz?


Quizzes are just regular `.md` files, with custom `<Answer>` vue component.
After creating a file, write question with `##` (`h2` tag), and then wrap each answer into `<Answer></Answer>` tags.


::: danger
You have to leave 1 blank line `<Answer>` and before `</Answer>`, because its actually rendering markdown inside and won't work otherwise!
:::

Pass `<Answer correct=true>` if it's correct answer. Incorrect is the default behaviour.
Example is available at `/books/example_book/example_quiz`

## How it works?
This site uses [Vuepress](https://v1.vuepress.vuejs.org/) and generates fully static website to be hosted on e.g. Github Pages.
