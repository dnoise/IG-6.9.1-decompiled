.class public final Lcom/instagram/share/tumblr/d;
.super Landroid/support/v4/a/a;
.source "XAuthRequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Lcom/instagram/share/tumblr/e;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcom/instagram/share/tumblr/e;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Lcom/instagram/share/tumblr/e;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/instagram/share/tumblr/d;->j()Z

    .line 95
    iput-object p1, p0, Lcom/instagram/share/tumblr/d;->n:Lcom/instagram/share/tumblr/e;

    .line 103
    invoke-virtual {p0}, Lcom/instagram/share/tumblr/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->a(Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method private u()Lcom/instagram/share/tumblr/e;
    .locals 8

    .prologue
    .line 116
    new-instance v0, Lcom/instagram/api/f/a;

    invoke-virtual {p0}, Lcom/instagram/share/tumblr/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/api/f/a;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 117
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/instagram/share/tumblr/d;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v2, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v3, p0, Lcom/instagram/share/tumblr/d;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/instagram/share/tumblr/d;->r:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_username"

    iget-object v7, p0, Lcom/instagram/share/tumblr/d;->s:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_password"

    iget-object v7, p0, Lcom/instagram/share/tumblr/d;->t:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_mode"

    const-string v7, "client_auth"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 127
    new-instance v4, Lcom/instagram/share/tumblr/f;

    invoke-direct {v4}, Lcom/instagram/share/tumblr/f;-><init>()V

    .line 130
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 133
    invoke-virtual {v2, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 135
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/share/tumblr/e;->a(Lorg/apache/http/HttpResponse;)Lcom/instagram/share/tumblr/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/instagram/share/tumblr/f;->c(Ljava/lang/String;)Lcom/instagram/share/tumblr/f;

    .line 140
    invoke-virtual {v4}, Lcom/instagram/share/tumblr/f;->a()Lcom/instagram/share/tumblr/e;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/instagram/share/tumblr/e;

    invoke-direct {p0, p1}, Lcom/instagram/share/tumblr/d;->a(Lcom/instagram/share/tumblr/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/share/tumblr/d;->p:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/share/tumblr/d;->q:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/instagram/share/tumblr/d;->r:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/instagram/share/tumblr/d;->o:Z

    .line 42
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/share/tumblr/d;->s:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/instagram/share/tumblr/d;->t:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/share/tumblr/d;->u()Lcom/instagram/share/tumblr/e;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/share/tumblr/d;->n:Lcom/instagram/share/tumblr/e;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/share/tumblr/d;->o:Z

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/instagram/share/tumblr/d;->m()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/instagram/share/tumblr/d;->n:Lcom/instagram/share/tumblr/e;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/instagram/share/tumblr/d;->n:Lcom/instagram/share/tumblr/e;

    invoke-direct {p0, v0}, Lcom/instagram/share/tumblr/d;->a(Lcom/instagram/share/tumblr/e;)V

    .line 63
    :cond_1
    return-void
.end method

.method protected final o()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/instagram/share/tumblr/d;->b()Z

    .line 68
    return-void
.end method

.method protected final r()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/a/a;->r()V

    .line 82
    invoke-virtual {p0}, Lcom/instagram/share/tumblr/d;->o()V

    .line 84
    iget-object v0, p0, Lcom/instagram/share/tumblr/d;->n:Lcom/instagram/share/tumblr/e;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/share/tumblr/d;->n:Lcom/instagram/share/tumblr/e;

    .line 88
    :cond_0
    return-void
.end method
