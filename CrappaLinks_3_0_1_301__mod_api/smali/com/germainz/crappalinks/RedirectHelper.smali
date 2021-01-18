.class public final Lcom/germainz/crappalinks/RedirectHelper;
.super Ljava/lang/Object;
.source "RedirectHelper.java"


# static fields
.field private static final REDIRECT_HOSTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t.co"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "youtu.be"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bit.ly"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "menea.me"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "kcy.me"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "goo.gl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ow.ly"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "j.mp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "redes.li"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dlvr.it"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tinyurl.com"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tmblr.co"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "reut.rs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sns.mx"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "wp.me"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "4sq.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ed.cl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "huff.to"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mun.do"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cos.as"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flip.it"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "amzn.to"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cort.as"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "on.cnn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "fb.me"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "shar.es"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "spr.ly"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "v.ht"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "v0v.in"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "redd.it"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "bitly.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "tl.gd"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "wh.gov"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "hukd.mydealz.de"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "untp.i"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "kck.st"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "engt.co"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "nyti.ms"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "cnnmon.ie"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "vrge.co"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "is.gd"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "cnn.it"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "spon.de"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "affiliation.appgratuites-network.com"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "t.cn"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "url.cn"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ht.ly"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "po.st"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ohmyyy.gt"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "dustn.ws"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "glm.io"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "nazr.in"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "chip.biz"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ift.tt"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "dopice.sk"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "phon.es"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "buff.ly"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "htn.to"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "trib.al"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "mhlthm.ag"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "nerdi.st"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "pulse.me"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "y2u.be"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "feedproxy.google.com"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "mdk.to"

    aput-object v2, v0, v1

    sput-object v0, Lcom/germainz/crappalinks/RedirectHelper;->REDIRECT_HOSTS:[Ljava/lang/String;

    return-void
.end method

.method public static getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "baseUrlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    .end local p0    # "urlString":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 36
    .restart local p0    # "urlString":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .local v8, "url":Ljava/net/URL;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .local v0, "baseUri":Ljava/net/URI;
    invoke-virtual {v0, p0}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isRedirect(Ljava/lang/String;)Z
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v0, Lcom/germainz/crappalinks/RedirectHelper;->REDIRECT_HOSTS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    const/16 v3, 0x41

    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 25
    .local v2, "redirectHost":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const/4 v3, 0x1

    .line 28
    .end local v2    # "redirectHost":Ljava/lang/String;
    :goto_1
    return v3

    .line 24
    .restart local v2    # "redirectHost":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v2    # "redirectHost":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
