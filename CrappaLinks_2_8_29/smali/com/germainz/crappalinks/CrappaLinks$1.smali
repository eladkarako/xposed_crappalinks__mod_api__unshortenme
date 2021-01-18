.class final Lcom/germainz/crappalinks/CrappaLinks$1;
.super Lcom/germainz/crappalinks/MaskHost;
.source "CrappaLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/germainz/crappalinks/CrappaLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final unmaskLink(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "b64data":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 53
    .local v6, "pathSegments":Ljava/util/List;
    if-nez v6, :cond_1

    .line 68
    .end local p1    # "url":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    .line 54
    .restart local p1    # "url":Landroid/net/Uri;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/germainz/crappalinks/CrappaLinks$1;->SEGMENT:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/germainz/crappalinks/CrappaLinks$1;->PARAMETER:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_2
    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v0, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 60
    .local v0, "b64Decoded":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "p"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "p":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "jsonObject2":Lorg/json/JSONObject;
    const-string v8, "url"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 68
    .local v7, "unmaskedLink":Ljava/lang/String;
    invoke-static {p1, v7}, Lcom/germainz/crappalinks/MaskHost;->parseUrl(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 64
    .end local v0    # "b64Decoded":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonObject2":Lorg/json/JSONObject;
    .end local v5    # "p":Ljava/lang/String;
    .end local v7    # "unmaskedLink":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
