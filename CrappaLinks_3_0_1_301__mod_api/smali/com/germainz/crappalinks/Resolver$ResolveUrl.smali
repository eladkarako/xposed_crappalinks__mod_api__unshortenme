.class final Lcom/germainz/crappalinks/Resolver$ResolveUrl;
.super Landroid/os/AsyncTask;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/germainz/crappalinks/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolveUrl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private connectionError:Z

.field private context:Landroid/content/Context;

.field private noConnectionError:Z

.field private synthetic this$0:Lcom/germainz/crappalinks/Resolver;


# direct methods
.method private constructor <init>(Lcom/germainz/crappalinks/Resolver;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    .line 58
    iput-boolean v1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->connectionError:Z

    .line 60
    iput-boolean v1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->noConnectionError:Z

    .line 63
    iput-object p1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/germainz/crappalinks/Resolver;B)V
    .locals 0
    .param p1, "x0"    # Lcom/germainz/crappalinks/Resolver;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/germainz/crappalinks/Resolver$ResolveUrl;-><init>(Lcom/germainz/crappalinks/Resolver;)V

    return-void
.end method

.method private getRedirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x12c

    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "c":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 77
    const/16 v8, 0x2710

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    const/16 v8, 0x3a98

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 80
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 82
    .local v7, "responseCode":I
    if-lt v7, v9, :cond_1

    const/16 v8, 0x190

    if-ge v7, v8, :cond_1

    .line 83
    const-string v8, "Location"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "location":Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/germainz/crappalinks/RedirectHelper;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    .end local v4    # "location":Ljava/lang/String;
    .end local v7    # "responseCode":I
    :cond_0
    :goto_0
    return-object v8

    .line 87
    .restart local v7    # "responseCode":I
    :cond_1
    const/16 v8, 0xc8

    if-lt v7, v8, :cond_3

    if-ge v7, v9, :cond_3

    .line 88
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9, p1}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 89
    .local v2, "d":Lorg/jsoup/nodes/Document;
    const-string v8, "*:not(noscript) > meta[http-equiv=Refresh]"

    invoke-static {v8, v2}, Lorg/jsoup/select/Selector;->select(Ljava/lang/String;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object v5

    .line 90
    .local v5, "refresh":Lorg/jsoup/select/Elements;
    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 91
    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v6

    .line 92
    .local v6, "refreshElement":Lorg/jsoup/nodes/Element;
    const-string v8, "url"

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 93
    const-string v8, "url"

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/germainz/crappalinks/RedirectHelper;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 94
    :cond_2
    :try_start_2
    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "url="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 95
    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "url="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v9, "^\'|\'$"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/germainz/crappalinks/RedirectHelper;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 105
    .end local v2    # "d":Lorg/jsoup/nodes/Document;
    .end local v5    # "refresh":Lorg/jsoup/select/Elements;
    .end local v6    # "refreshElement":Lorg/jsoup/nodes/Element;
    :cond_3
    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    .end local v7    # "responseCode":I
    :cond_4
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 99
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->noConnectionError:Z

    .line 100
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 101
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    :try_start_4
    iput-boolean v8, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->connectionError:Z

    .line 103
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 105
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_5

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v8

    .line 98
    :catch_2
    move-exception v8

    move-object v3, v8

    goto :goto_2
.end method

.method private getRedirectUsingLongURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "c":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://unshorten.me/json/"
    #const-string v7, "http://api.longurl.org/v2/expand?format=json&title=1&url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 115
    const-string v5, "User-Agent"

    const-string v6, "CrappaLinks"

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    const/16 v5, 0x3a98

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 119
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 120
    .local v4, "responseCode":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 122
    new-instance v3, Lorg/json/JSONObject;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "resolved_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 132
    .end local p1    # "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "responseCode":I
    :cond_0
    :goto_0
    return-object p1

    .line 132
    .restart local v4    # "responseCode":I
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 127
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v5

    :goto_1
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->noConnectionError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 128
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->connectionError:Z

    .line 130
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v5

    .line 127
    :catch_2
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    aget-object v3, p1, v2

    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_0

    iput-boolean v1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->noConnectionError:Z

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-static {v4}, Lcom/germainz/crappalinks/Resolver;->access$200(Lcom/germainz/crappalinks/Resolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->getRedirectUsingLongURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v4}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-static {v4}, Lcom/germainz/crappalinks/Resolver;->access$300(Lcom/germainz/crappalinks/Resolver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NEVER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-static {v4}, Lcom/germainz/crappalinks/Resolver;->access$300(Lcom/germainz/crappalinks/Resolver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI_ONLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    move v0, v2

    :goto_1
    move-object v1, v3

    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    if-nez v0, :cond_4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/germainz/crappalinks/RedirectHelper;->isRedirect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v3}, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->getRedirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-boolean v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->noConnectionError:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    const v3, 0x7f050020

    invoke-virtual {v2, v3}, Lcom/germainz/crappalinks/Resolver;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-static {v0}, Lcom/germainz/crappalinks/Resolver;->access$400(Lcom/germainz/crappalinks/Resolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    const-class v2, Lcom/germainz/crappalinks/ConfirmDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-virtual {v1, v0}, Lcom/germainz/crappalinks/Resolver;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->connectionError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Lcom/germainz/crappalinks/Resolver;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->noConnectionError:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->connectionError:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-static {v0}, Lcom/germainz/crappalinks/Resolver;->access$100(Lcom/germainz/crappalinks/Resolver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    const v3, 0x7f05001e

    invoke-virtual {v2, v3}, Lcom/germainz/crappalinks/Resolver;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "crappalinks"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-virtual {v1, v0}, Lcom/germainz/crappalinks/Resolver;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    invoke-static {v0}, Lcom/germainz/crappalinks/Resolver;->access$100(Lcom/germainz/crappalinks/Resolver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->this$0:Lcom/germainz/crappalinks/Resolver;

    const v2, 0x7f050021

    invoke-virtual {v1, v2}, Lcom/germainz/crappalinks/Resolver;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    :cond_0
    return-void
.end method
