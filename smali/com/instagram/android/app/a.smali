.class final Lcom/instagram/android/app/a;
.super Ljava/lang/Object;
.source "InstagramApplicationForMainProcess.java"

# interfaces
.implements Lcom/instagram/common/g/a/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maps.googleapis.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$000()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    .line 129
    :cond_0
    return-void
.end method
