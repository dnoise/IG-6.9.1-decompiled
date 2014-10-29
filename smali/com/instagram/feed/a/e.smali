.class public final Lcom/instagram/feed/a/e;
.super Ljava/lang/Object;
.source "MainFeedResponse.java"


# instance fields
.field a:Lcom/instagram/feed/f/c;

.field b:Lcom/instagram/feed/f/c;

.field c:Lcom/instagram/feed/f/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/feed/f/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/feed/f/c;

    return-object v0
.end method

.method public final a(Lcom/instagram/feed/f/d;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 51
    sget-object v1, Lcom/instagram/feed/a/d;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/feed/f/c;

    if-eqz v1, :cond_1

    .line 54
    iput-object v3, p0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/feed/f/c;

    goto :goto_0

    .line 58
    :cond_1
    :pswitch_1
    iget-object v1, p0, Lcom/instagram/feed/a/e;->b:Lcom/instagram/feed/f/c;

    if-eqz v1, :cond_2

    .line 59
    iput-object v3, p0, Lcom/instagram/feed/a/e;->b:Lcom/instagram/feed/f/c;

    goto :goto_0

    .line 63
    :cond_2
    :pswitch_2
    iget-object v1, p0, Lcom/instagram/feed/a/e;->c:Lcom/instagram/feed/f/c;

    if-eqz v1, :cond_0

    .line 64
    iput-object v3, p0, Lcom/instagram/feed/a/e;->c:Lcom/instagram/feed/f/c;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Lcom/instagram/feed/f/c;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/feed/a/e;->b:Lcom/instagram/feed/f/c;

    return-object v0
.end method

.method public final c()Lcom/instagram/feed/f/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/feed/a/e;->c:Lcom/instagram/feed/f/c;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/feed/f/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/a/e;->b:Lcom/instagram/feed/f/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/a/e;->c:Lcom/instagram/feed/f/c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
