.class public final Lcom/instagram/api/g/b;
.super Ljava/lang/Object;
.source "CdnTraceRequestHelper.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "igcdn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cdninstagram.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/api/g/b;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/net/URI;)Lcom/instagram/api/g/c;
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string v1, "ak.instagram.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v0, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;

    .line 62
    :goto_0
    return-object v0

    .line 58
    :cond_0
    sget-object v1, Lcom/instagram/api/g/b;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/instagram/api/g/b;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_1
    sget-object v0, Lcom/instagram/api/g/c;->b:Lcom/instagram/api/g/c;

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    const-string v0, "X-Backend"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "X-Backend"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->d(Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string v0, "X-BlockId"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "X-BlockId"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/g/a;->a(J)V

    .line 95
    :cond_1
    const-string v0, "X-Object-Type"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "X-Object-Type"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->e(Ljava/lang/String;)V

    .line 98
    :cond_2
    const-string v0, "X-Origin-Hit"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "X-Origin-Hit"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->a(I)V

    .line 102
    :cond_3
    const-string v0, "X-Origin-From-Pieces"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "X-Origin-From-Pieces"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->f(Ljava/lang/String;)V

    .line 105
    :cond_4
    const-string v0, "X-Origin-Hit-Original"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    const-string v0, "X-Origin-Hit-Original"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->g(Ljava/lang/String;)V

    .line 108
    :cond_5
    const-string v0, "X-Origin-Is-Transcode"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    const-string v0, "X-Origin-Is-Transcode"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->b(I)V

    .line 114
    :cond_6
    const-string v0, "X-Edge-Hit"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    const-string v0, "X-Edge-Hit"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->c(I)V

    .line 118
    :cond_7
    const-string v0, "X-Edge-From-Pieces"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    const-string v0, "X-Edge-From-Pieces"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->h(Ljava/lang/String;)V

    .line 121
    :cond_8
    const-string v0, "X-FB-Edge-Debug"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    const-string v0, "X-FB-Edge-Debug"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->i(Ljava/lang/String;)V

    .line 124
    :cond_9
    const-string v0, "X-Cache"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    const-string v0, "X-Cache"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->a(Ljava/lang/String;)V

    .line 127
    :cond_a
    const-string v0, "X-Cache-Remote"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    const-string v0, "X-Cache-Remote"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->b(Ljava/lang/String;)V

    .line 130
    :cond_b
    const-string v0, "X-Akamai-Pragma-Client-IP"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    const-string v0, "X-Akamai-Pragma-Client-IP"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/a;->c(Ljava/lang/String;)V

    .line 134
    :cond_c
    return-void
.end method

.method public static a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/g/b;->a(Ljava/net/URI;)Lcom/instagram/api/g/c;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v1, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;

    invoke-virtual {v0, v1}, Lcom/instagram/api/g/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "Pragma"

    const-string v2, "akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-get-client-ip"

    invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    .line 78
    const-string v2, "Cdn"

    invoke-interface {v1, v2, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "X-FB-Debug"

    const-string v2, "True"

    invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "X-FB-Origin-Debug"

    const-string v2, "True"

    invoke-virtual {p0, v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Lch/boye/httpclientandroidlib/params/HttpParams;Lcom/instagram/api/g/i;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    const-string v0, "Cdn"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcom/instagram/api/g/a;

    const-string v0, "Cdn"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/g/c;

    invoke-direct {v1, v0}, Lcom/instagram/api/g/a;-><init>(Lcom/instagram/api/g/c;)V

    invoke-virtual {p1, v1}, Lcom/instagram/api/g/i;->a(Lcom/instagram/api/g/a;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static a(Lcom/instagram/api/g/a;)Z
    .locals 2
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;

    invoke-virtual {p0}, Lcom/instagram/api/g/a;->a()Lcom/instagram/api/g/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/g/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/instagram/api/g/a;)Z
    .locals 2
    .parameter

    .prologue
    .line 50
    sget-object v0, Lcom/instagram/api/g/c;->b:Lcom/instagram/api/g/c;

    invoke-virtual {p0}, Lcom/instagram/api/g/a;->a()Lcom/instagram/api/g/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/g/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
