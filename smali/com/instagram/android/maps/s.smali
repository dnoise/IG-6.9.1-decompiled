.class final Lcom/instagram/android/maps/s;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

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
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/instagram/android/maps/s;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/t;)Z
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/maps/s;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/instagram/feed/d/t;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->C()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/s;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->c(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-virtual {v0}, Lcom/instagram/android/g/b;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/maps/s;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->d(Lcom/instagram/android/maps/PhotoMapsActivity;)Z

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/s;->a(Lcom/instagram/feed/d/t;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/s;->b(Lcom/instagram/feed/d/t;)V

    return-void
.end method
