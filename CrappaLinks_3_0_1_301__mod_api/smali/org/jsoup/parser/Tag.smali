.class public final Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formListedTags:[Ljava/lang/String;

.field private static final formSubmitTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final preserveWhitespaceTags:[Ljava/lang/String;

.field private static final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canContainBlock:Z

.field private canContainInline:Z

.field private empty:Z

.field private formList:Z

.field private formSubmit:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 221
    const/16 v4, 0x3b

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "html"

    aput-object v5, v4, v7

    const-string v5, "head"

    aput-object v5, v4, v8

    const-string v5, "body"

    aput-object v5, v4, v10

    const-string v5, "frameset"

    aput-object v5, v4, v11

    const-string v5, "script"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "noscript"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "style"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "meta"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "link"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "title"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "frame"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "noframes"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "section"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "nav"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "aside"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "hgroup"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "header"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "footer"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "p"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, "h1"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string v6, "h2"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string v6, "h3"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string v6, "h4"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string v6, "h5"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string v6, "h6"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string v6, "ul"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string v6, "ol"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string v6, "pre"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string v6, "div"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string v6, "blockquote"

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-string v6, "hr"

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-string v6, "address"

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-string v6, "figure"

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const-string v6, "figcaption"

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const-string v6, "form"

    aput-object v6, v4, v5

    const/16 v5, 0x23

    const-string v6, "fieldset"

    aput-object v6, v4, v5

    const/16 v5, 0x24

    const-string v6, "ins"

    aput-object v6, v4, v5

    const/16 v5, 0x25

    const-string v6, "del"

    aput-object v6, v4, v5

    const/16 v5, 0x26

    const-string v6, "s"

    aput-object v6, v4, v5

    const/16 v5, 0x27

    const-string v6, "dl"

    aput-object v6, v4, v5

    const/16 v5, 0x28

    const-string v6, "dt"

    aput-object v6, v4, v5

    const/16 v5, 0x29

    const-string v6, "dd"

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    const-string v6, "li"

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    const-string v6, "table"

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    const-string v6, "caption"

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    const-string v6, "thead"

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    const-string v6, "tfoot"

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    const-string v6, "tbody"

    aput-object v6, v4, v5

    const/16 v5, 0x30

    const-string v6, "colgroup"

    aput-object v6, v4, v5

    const/16 v5, 0x31

    const-string v6, "col"

    aput-object v6, v4, v5

    const/16 v5, 0x32

    const-string v6, "tr"

    aput-object v6, v4, v5

    const/16 v5, 0x33

    const-string v6, "th"

    aput-object v6, v4, v5

    const/16 v5, 0x34

    const-string v6, "td"

    aput-object v6, v4, v5

    const/16 v5, 0x35

    const-string v6, "video"

    aput-object v6, v4, v5

    const/16 v5, 0x36

    const-string v6, "audio"

    aput-object v6, v4, v5

    const/16 v5, 0x37

    const-string v6, "canvas"

    aput-object v6, v4, v5

    const/16 v5, 0x38

    const-string v6, "details"

    aput-object v6, v4, v5

    const/16 v5, 0x39

    const-string v6, "menu"

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    const-string v6, "plaintext"

    aput-object v6, v4, v5

    sput-object v4, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    .line 228
    const/16 v4, 0x38

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "object"

    aput-object v5, v4, v7

    const-string v5, "base"

    aput-object v5, v4, v8

    const-string v5, "font"

    aput-object v5, v4, v10

    const-string v5, "tt"

    aput-object v5, v4, v11

    const-string v5, "i"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "b"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "u"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "big"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "small"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "em"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "strong"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "dfn"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "code"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "samp"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "kbd"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "var"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "cite"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "abbr"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "time"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, "acronym"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string v6, "mark"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string v6, "ruby"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string v6, "rt"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string v6, "rp"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string v6, "a"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string v6, "img"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string v6, "br"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string v6, "wbr"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string v6, "map"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string v6, "q"

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-string v6, "sub"

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-string v6, "sup"

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-string v6, "bdo"

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const-string v6, "iframe"

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const-string v6, "embed"

    aput-object v6, v4, v5

    const/16 v5, 0x23

    const-string v6, "span"

    aput-object v6, v4, v5

    const/16 v5, 0x24

    const-string v6, "input"

    aput-object v6, v4, v5

    const/16 v5, 0x25

    const-string v6, "select"

    aput-object v6, v4, v5

    const/16 v5, 0x26

    const-string v6, "textarea"

    aput-object v6, v4, v5

    const/16 v5, 0x27

    const-string v6, "label"

    aput-object v6, v4, v5

    const/16 v5, 0x28

    const-string v6, "button"

    aput-object v6, v4, v5

    const/16 v5, 0x29

    const-string v6, "optgroup"

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    const-string v6, "option"

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    const-string v6, "legend"

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    const-string v6, "datalist"

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    const-string v6, "keygen"

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    const-string v6, "output"

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    const-string v6, "progress"

    aput-object v6, v4, v5

    const/16 v5, 0x30

    const-string v6, "meter"

    aput-object v6, v4, v5

    const/16 v5, 0x31

    const-string v6, "area"

    aput-object v6, v4, v5

    const/16 v5, 0x32

    const-string v6, "param"

    aput-object v6, v4, v5

    const/16 v5, 0x33

    const-string v6, "source"

    aput-object v6, v4, v5

    const/16 v5, 0x34

    const-string v6, "track"

    aput-object v6, v4, v5

    const/16 v5, 0x35

    const-string v6, "summary"

    aput-object v6, v4, v5

    const/16 v5, 0x36

    const-string v6, "command"

    aput-object v6, v4, v5

    const/16 v5, 0x37

    const-string v6, "device"

    aput-object v6, v4, v5

    sput-object v4, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    .line 235
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "meta"

    aput-object v5, v4, v7

    const-string v5, "link"

    aput-object v5, v4, v8

    const-string v5, "base"

    aput-object v5, v4, v10

    const-string v5, "frame"

    aput-object v5, v4, v11

    const-string v5, "img"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "br"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "wbr"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "embed"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "hr"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "input"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "keygen"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "col"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "command"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "device"

    aput-object v6, v4, v5

    sput-object v4, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .line 239
    const/16 v4, 0x13

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v7

    const-string v5, "a"

    aput-object v5, v4, v8

    const-string v5, "p"

    aput-object v5, v4, v10

    const-string v5, "h1"

    aput-object v5, v4, v11

    const-string v5, "h2"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "h3"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "h4"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "h5"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "h6"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "pre"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "address"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "li"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "th"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "td"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "script"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "style"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "ins"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "del"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "s"

    aput-object v6, v4, v5

    sput-object v4, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 243
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "pre"

    aput-object v5, v4, v7

    const-string v5, "plaintext"

    aput-object v5, v4, v8

    const-string v5, "title"

    aput-object v5, v4, v10

    const-string v5, "textarea"

    aput-object v5, v4, v11

    sput-object v4, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 247
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "button"

    aput-object v5, v4, v7

    const-string v5, "fieldset"

    aput-object v5, v4, v8

    const-string v5, "input"

    aput-object v5, v4, v10

    const-string v5, "keygen"

    aput-object v5, v4, v11

    const-string v5, "object"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string v6, "output"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "select"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "textarea"

    aput-object v6, v4, v5

    sput-object v4, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    .line 250
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "input"

    aput-object v5, v4, v7

    const-string v5, "keygen"

    aput-object v5, v4, v8

    const-string v5, "object"

    aput-object v5, v4, v10

    const-string v5, "select"

    aput-object v5, v4, v11

    const-string v5, "textarea"

    aput-object v5, v4, v9

    sput-object v4, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    .line 256
    sget-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    const/16 v4, 0x3b

    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    .line 257
    .local v3, "tagName":Ljava/lang/String;
    new-instance v2, Lorg/jsoup/parser/Tag;

    invoke-direct {v2, v3}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v2}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "tag":Lorg/jsoup/parser/Tag;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_0
    sget-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x38

    if-ge v1, v4, :cond_1

    aget-object v3, v0, v1

    .line 261
    .restart local v3    # "tagName":Ljava/lang/String;
    new-instance v2, Lorg/jsoup/parser/Tag;

    invoke-direct {v2, v3}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v2    # "tag":Lorg/jsoup/parser/Tag;
    iput-boolean v7, v2, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 263
    iput-boolean v7, v2, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 264
    iput-boolean v7, v2, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 265
    invoke-static {v2}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v2    # "tag":Lorg/jsoup/parser/Tag;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    const/16 v4, 0xe

    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .line 270
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/parser/Tag;

    .line 271
    .restart local v2    # "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v2}, Lcom/germainz/crappalinks/MaskHost;->notNull(Ljava/lang/Object;)V

    .line 272
    iput-boolean v7, v2, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 273
    iput-boolean v7, v2, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 274
    iput-boolean v8, v2, Lorg/jsoup/parser/Tag;->empty:Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v2    # "tag":Lorg/jsoup/parser/Tag;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_2
    sget-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x13

    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 278
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/parser/Tag;

    .line 279
    .restart local v2    # "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v2}, Lcom/germainz/crappalinks/MaskHost;->notNull(Ljava/lang/Object;)V

    .line 280
    iput-boolean v7, v2, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 283
    .end local v2    # "tag":Lorg/jsoup/parser/Tag;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    sget-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_4

    aget-object v3, v0, v1

    .line 284
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/parser/Tag;

    .line 285
    .restart local v2    # "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v2}, Lcom/germainz/crappalinks/MaskHost;->notNull(Ljava/lang/Object;)V

    .line 286
    iput-boolean v8, v2, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 289
    .end local v2    # "tag":Lorg/jsoup/parser/Tag;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    sget-object v0, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v1, v4, :cond_5

    aget-object v3, v0, v1

    .line 290
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/parser/Tag;

    .line 291
    .restart local v2    # "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v2}, Lcom/germainz/crappalinks/MaskHost;->notNull(Ljava/lang/Object;)V

    .line 292
    iput-boolean v8, v2, Lorg/jsoup/parser/Tag;->formList:Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 295
    .end local v2    # "tag":Lorg/jsoup/parser/Tag;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_5
    sget-object v0, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_6
    const/4 v4, 0x5

    if-ge v1, v4, :cond_6

    aget-object v3, v0, v1

    .line 296
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/parser/Tag;

    .line 297
    .restart local v2    # "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v2}, Lcom/germainz/crappalinks/MaskHost;->notNull(Ljava/lang/Object;)V

    .line 298
    iput-boolean v8, v2, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 300
    .end local v2    # "tag":Lorg/jsoup/parser/Tag;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 18
    iput-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 19
    iput-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 20
    iput-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 21
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 22
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 23
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 24
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 25
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static register(Lorg/jsoup/parser/Tag;)V
    .locals 2
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .prologue
    .line 303
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/germainz/crappalinks/MaskHost;->notNull(Ljava/lang/Object;)V

    .line 50
    sget-object v1, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 52
    .local v0, "tag":Lorg/jsoup/parser/Tag;
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/germainz/crappalinks/MaskHost;->notEmpty(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lorg/jsoup/parser/Tag;
    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 57
    .restart local v0    # "tag":Lorg/jsoup/parser/Tag;
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/jsoup/parser/Tag;

    .end local v0    # "tag":Lorg/jsoup/parser/Tag;
    invoke-direct {v0, p0}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v0    # "tag":Lorg/jsoup/parser/Tag;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 64
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-ne p0, p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    instance-of v3, p1, Lorg/jsoup/parser/Tag;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 184
    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 186
    .local v0, "tag":Lorg/jsoup/parser/Tag;
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 187
    :cond_3
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 188
    :cond_4
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->empty:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->empty:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 189
    :cond_5
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 190
    :cond_6
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->isBlock:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 191
    :cond_7
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 192
    :cond_8
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 193
    :cond_9
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->formList:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->formList:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 194
    :cond_a
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    iget-boolean v4, v0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_0

    .line 195
    :cond_b
    iget-object v3, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v4, v0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final formatAsBlock()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 202
    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 203
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 204
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 205
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 206
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 207
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 208
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v4, v1

    .line 209
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v4, v1

    .line 210
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v4, v1

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    if-eqz v4, :cond_8

    :goto_8
    add-int v0, v1, v2

    .line 212
    return v0

    :cond_0
    move v1, v3

    .line 203
    goto :goto_0

    :cond_1
    move v1, v3

    .line 204
    goto :goto_1

    :cond_2
    move v1, v3

    .line 205
    goto :goto_2

    :cond_3
    move v1, v3

    .line 206
    goto :goto_3

    :cond_4
    move v1, v3

    .line 207
    goto :goto_4

    :cond_5
    move v1, v3

    .line 208
    goto :goto_5

    :cond_6
    move v1, v3

    .line 209
    goto :goto_6

    :cond_7
    move v1, v3

    .line 210
    goto :goto_7

    :cond_8
    move v2, v3

    .line 211
    goto :goto_8
.end method

.method public final isBlock()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public final isFormListed()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return v0
.end method

.method public final isKnownTag()Z
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSelfClosing()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final preserveWhitespace()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method final setSelfClosing()Lorg/jsoup/parser/Tag;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 176
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
