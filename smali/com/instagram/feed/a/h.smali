.class public abstract Lcom/instagram/feed/a/h;
.super Lcom/instagram/api/k/a/c;
.source "MediaFeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/instagram/feed/a/i;",
        ">",
        "Lcom/instagram/api/k/a/c",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field protected final b:Lcom/instagram/feed/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/feed/a/h;->a:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/feed/a/h;->b:Lcom/instagram/feed/f/a;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/instagram/feed/f/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/instagram/feed/a/h;->b:Lcom/instagram/feed/f/a;

    .line 32
    iput-boolean p2, p0, Lcom/instagram/feed/a/h;->a:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/instagram/feed/a/h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/a/h;->b:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/instagram/feed/a/h;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    .line 43
    iget-object v1, v0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 44
    iget-object v0, v0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/feed/a/h;->b:Lcom/instagram/feed/f/a;

    invoke-virtual {v1}, Lcom/instagram/feed/f/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/instagram/feed/a/h;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method public final l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v3, "X-Attribution-ID"

    invoke-direct {v2, v3, v1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
