# OPML Utils

OPML? According to http://dev.opml.org/

> OPML an XML-based format that allows exchange of outline-structured
> information between applications running on different operating systems and
> environments.

OPML files are used as a way to export (and import) subscriptions in feed reader
applications.

Those XSLT files have been tested with
[xslproc](http://xmlsoft.org/XSLT/xsltproc2.html) but should work with any XSLT
1.0 processor. Given you have an OPML file called `feeds.opml`, here is how to
use them.

## Convert an OPML file to an HTML page

`convert-to-html.xsl` is able to convert the OPML file to an HTML5 document.

```
xslproc convert-to-html.xsl feeds.opml
```

## Convert an OPML file to an HTML fragment

`convert-to-html-fragment.xsl` does pretty much the same of
`convert-to-html.xsl` except that it omits the `html`, `head` and `body`
elements.

```
xslproc convert-to-html-fragment.xsl feeds.opml
```

## Filter feeds from a category

`filter.xsl` allows you to filter feeds from a category to produce another OPML
file. Feeds from sub-categories are also included. This stylesheet expects the
name of the category in parameter.

```
xsltproc --stringparam text "My category" filter.xsl feeds.opml
```
