.class public final Lcom/instagram/f/a/a/p;
.super Lcom/instagram/api/k/a/b;
.source "LikeDirectShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/feed/d/l;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/instagram/feed/d/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/instagram/f/a/a/p;->a:Lcom/instagram/feed/d/l;

    .line 34
    iput p2, p0, Lcom/instagram/f/a/a/p;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 5

    .prologue
    .line 39
    const-string v1, "direct_share/%s/%s/"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/instagram/f/a/a/p;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget v0, p0, Lcom/instagram/f/a/a/p;->b:I

    sget v4, Lcom/instagram/feed/d/o;->a:I

    if-ne v0, v4, :cond_0

    const-string v0, "like"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "unlike"

    goto :goto_0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
