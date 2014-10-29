.class final Lcom/instagram/android/maps/d/e;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/feed/d/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/t;)Z
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;

    invoke-static {v0}, Lcom/instagram/android/maps/d/a;->c(Lcom/instagram/android/maps/d/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/instagram/feed/d/t;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->C()I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;

    iget-object v0, v0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/a/a;->a(Ljava/lang/String;)Z

    .line 105
    iget-object v0, p0, Lcom/instagram/android/maps/d/e;->a:Lcom/instagram/android/maps/d/a;

    invoke-static {v0}, Lcom/instagram/android/maps/d/a;->c(Lcom/instagram/android/maps/d/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/e;->a(Lcom/instagram/feed/d/t;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/e;->b(Lcom/instagram/feed/d/t;)V

    return-void
.end method
