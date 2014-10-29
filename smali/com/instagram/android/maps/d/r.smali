.class final Lcom/instagram/android/maps/d/r;
.super Lcom/instagram/api/j/f;
.source "ReviewPhotoMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/android/g/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/List;)V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instagram/android/maps/b/a;

    .line 120
    iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->f(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/maps/b/b;

    move-result-object v7

    new-instance v0, Lcom/instagram/android/maps/b/h;

    invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->b()D

    move-result-wide v1

    invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->c()D

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V

    invoke-virtual {v7, v0}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->g(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/a/o;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v1}, Lcom/instagram/android/maps/d/l;->f(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/maps/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/b;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/o;->a(Ljava/util/ArrayList;)V

    .line 123
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/maps/d/l;->a(Lcom/instagram/android/maps/d/l;Z)V

    .line 135
    invoke-super {p0}, Lcom/instagram/api/j/f;->a()V

    .line 136
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V

    .line 128
    iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->h(Lcom/instagram/android/maps/d/l;)Z

    .line 129
    iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->c(Lcom/instagram/android/maps/d/l;)V

    .line 130
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/r;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/maps/d/l;->a(Lcom/instagram/android/maps/d/l;Z)V

    .line 141
    invoke-super {p0}, Lcom/instagram/api/j/f;->b()V

    .line 142
    return-void
.end method
