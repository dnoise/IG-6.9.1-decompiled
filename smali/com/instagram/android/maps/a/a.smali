.class public final Lcom/instagram/android/maps/a/a;
.super Lcom/instagram/ui/d/a;
.source "GeoMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/ui/d/a",
        "<",
        "Lcom/instagram/android/maps/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/android/maps/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/maps/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/instagram/android/maps/a/a;->b:Lcom/instagram/android/maps/d/a;

    .line 30
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private a(I)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    mul-int/lit8 v2, p1, 0x3

    .line 57
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 58
    add-int v3, v2, v0

    .line 59
    invoke-direct {p0}, Lcom/instagram/android/maps/a/a;->a()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 60
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/a/a;->b(I)Lcom/instagram/android/g/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-object v1
.end method

.method private b(I)Lcom/instagram/android/g/b;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/w;

    invoke-direct {p0, p3}, Lcom/instagram/android/maps/a/a;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/a/a;->getCount()I

    move-result v2

    if-ne p3, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v3

    iget-object v5, p0, Lcom/instagram/android/maps/a/a;->b:Lcom/instagram/android/maps/d/a;

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V

    .line 51
    return-void

    .line 44
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
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
    .line 33
    iput-object p1, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-virtual {v0}, Lcom/instagram/android/g/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 91
    invoke-virtual {p0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V

    .line 92
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/maps/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
