# Gradescope's Remark Math Fork

Math Inline and Block supporting for Remark

This is a customized fork of [remark-math](https://github.com/remarkjs/remark-math)

This project contains three packages:
- remark-math
- rehype-katex
- remark-html-katex

Gradescope's fork contains enhancements to the `remark-math` package.


## What does Remark Math?

`remark-math` is designed to parse `$` and `$$` delimited text as
`inlineMath` and \[display/block\] `math` nodes, respectively.

The Gradescope fork is designed to enable more flexible delimiters.
Specifically, for our use case, we want to recognize `$$` to delimit
`inlineMath`, and `$$$` to delimit \[display/block\] `math`.

In order to support custom delimiters, `remark-math` now accepts a
`modes` option. An example for usage can be found in `./specs/remark-math.spec.js`.


### Developing and Building

To build and test the `remark-math` package, run:

```bash
$ nvm use
$ npm install
$ cd ./packages/remark-math
$ npm run-script build
$ cd ../..
$ npm run-script test:api
```


### Publishing

To build and publish the Remark-Math package to Turnitin's Artifactory repository,
run:

```bash
$ nvm use
$ npm install
$ npm run-script tii-publish-remark-math
```

## Future Plans

We hope to reapply these features to the latest version of `remark-math`,
and to submit them for merging into the upstream.
However, that may take significantly rewriting these features.


## More Info

For more information on the original project, see
[the upstream project's original README](./readme-upstream.md).
