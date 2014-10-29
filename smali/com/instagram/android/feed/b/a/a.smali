.class public final Lcom/instagram/android/feed/b/a/a;
.super Lcom/instagram/api/k/a/c;
.source "FeedAYSFUserDismissRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/user/d/a;


# direct methods
.method public constructor <init>(Lcom/instagram/user/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/instagram/android/feed/b/a/a;->a:Lcom/instagram/user/d/a;

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    const-string v0, "algorithm"

    iget-object v1, p0, Lcom/instagram/android/feed/b/a/a;->a:Lcom/instagram/user/d/a;

    invoke-virtual {v1}, Lcom/instagram/user/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "target_id"

    iget-object v1, p0, Lcom/instagram/android/feed/b/a/a;->a:Lcom/instagram/user/d/a;

    invoke-virtual {v1}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "discover/aysf_dismiss/"

    return-object v0
.end method
