.class public final Lcom/instagram/android/c/a/e;
.super Lcom/instagram/api/j/b;
.source "LikeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/feed/d/l;

.field private d:I

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IILjava/util/Map;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/feed/d/l;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p7}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 38
    iput-object p3, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;

    .line 39
    iput p4, p0, Lcom/instagram/android/c/a/e;->d:I

    .line 40
    iput p5, p0, Lcom/instagram/android/c/a/e;->e:I

    .line 41
    iput-object p6, p0, Lcom/instagram/android/c/a/e;->f:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;

    invoke-static {v0}, Lcom/instagram/feed/d/u;->a(Lcom/instagram/feed/d/l;)V

    .line 87
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    const-string v0, "media_id"

    iget-object v1, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    const-string v1, "d"

    iget v0, p0, Lcom/instagram/android/c/a/e;->e:I

    sget v2, Lcom/instagram/android/g/g;->b:I

    if-ne v0, v2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/instagram/android/c/a/e;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/instagram/android/c/a/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 5

    .prologue
    .line 46
    iget v0, p0, Lcom/instagram/android/c/a/e;->d:I

    sget v1, Lcom/instagram/feed/d/o;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "like"

    .line 49
    :goto_0
    const-string v1, "media/%s/%s/"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v4}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "unlike"

    goto :goto_0
.end method
