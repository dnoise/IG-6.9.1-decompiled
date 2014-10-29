.class public final Lcom/instagram/f/a/b/c;
.super Lcom/instagram/api/k/a/d;
.source "InboxResponse.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/instagram/f/b/a;

.field c:Lcom/instagram/realtimeclient/RealtimeSubscription;

.field d:Lcom/instagram/f/a/b/d;

.field private e:Lcom/instagram/feed/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/instagram/api/k/a/d;-><init>()V

    .line 104
    new-instance v0, Lcom/instagram/f/b/a;

    invoke-direct {v0}, Lcom/instagram/f/b/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/f/a/b/c;->b:Lcom/instagram/f/b/a;

    .line 105
    invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/f/a/b/c;->e:Lcom/instagram/feed/f/a;

    .line 106
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->e:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->e:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    invoke-virtual {v0, v1, p1}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/instagram/feed/f/a;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->e:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method public final c()Lcom/instagram/f/b/a;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->b:Lcom/instagram/f/b/a;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/realtimeclient/RealtimePatchTuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->d:Lcom/instagram/f/a/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/f/a/b/c;->d:Lcom/instagram/f/a/b/d;

    invoke-static {v0}, Lcom/instagram/f/a/b/d;->a(Lcom/instagram/f/a/b/d;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/instagram/realtimeclient/RealtimePatchRange;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->d:Lcom/instagram/f/a/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/f/a/b/c;->d:Lcom/instagram/f/a/b/d;

    invoke-static {v0}, Lcom/instagram/f/a/b/d;->b(Lcom/instagram/f/a/b/d;)Lcom/instagram/realtimeclient/RealtimePatchRange;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Lcom/instagram/realtimeclient/RealtimeSubscription;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/f/a/b/c;->c:Lcom/instagram/realtimeclient/RealtimeSubscription;

    return-object v0
.end method
