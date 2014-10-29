.class public final Lcom/instagram/feed/a/b;
.super Lcom/instagram/feed/a/h;
.source "MainFeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/feed/a/h",
        "<",
        "Lcom/instagram/feed/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/a;ZLjava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/a/h;-><init>(Lcom/instagram/feed/f/a;Z)V

    .line 24
    iput-object p3, p0, Lcom/instagram/feed/a/b;->a:Ljava/io/File;

    .line 25
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/c;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/instagram/feed/a/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-static {p1}, Lcom/instagram/feed/a/b;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/instagram/feed/a/h;->a(Lcom/instagram/common/a/c/b;)V

    .line 41
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/l/b/a;->D()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "last_unseen_ad_id"

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "feed/timeline/"

    return-object v0
.end method

.method public final f()Ljava/io/File;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/feed/a/b;->a:Ljava/io/File;

    return-object v0
.end method
