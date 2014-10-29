.class public final Lcom/instagram/android/a/o;
.super Lcom/instagram/ui/d/a;
.source "ReviewPhotoMapAdapter.java"


# instance fields
.field private final a:Landroid/support/v4/app/s;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/a/o;->a:Landroid/support/v4/app/s;

    .line 39
    return-void
.end method

.method private static a(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    mul-int/lit8 v2, p0, 0x4

    .line 123
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 124
    add-int v3, v2, v0

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 126
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-object v1
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/a/o;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/a/o;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p2}, Lcom/instagram/android/a/o;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    invoke-static {p1}, Lcom/instagram/android/a/b/ah;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-static {p1}, Lcom/instagram/android/a/b/an;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-static {p1}, Lcom/instagram/android/a/b/ak;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_3
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p3}, Lcom/instagram/android/a/o;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/aj;

    invoke-static {p2, v0}, Lcom/instagram/android/a/b/ah;->a(Landroid/content/Context;Lcom/instagram/android/a/b/aj;)V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/ap;

    invoke-virtual {p0, p3}, Lcom/instagram/android/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/a/q;

    invoke-static {p2, v0, v1}, Lcom/instagram/android/a/b/an;->a(Landroid/content/Context;Lcom/instagram/android/a/b/ap;Lcom/instagram/android/a/q;)V

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/am;

    invoke-virtual {p0, p3}, Lcom/instagram/android/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/a/r;

    invoke-static {p2, v0, v1}, Lcom/instagram/android/a/b/ak;->a(Landroid/content/Context;Lcom/instagram/android/a/b/am;Lcom/instagram/android/a/r;)V

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/w;

    invoke-virtual {p0, p3}, Lcom/instagram/android/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/instagram/android/a/o;->a(I)Z

    move-result v2

    invoke-static {v0, v1, v2, p3}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZI)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v0, p0, Lcom/instagram/android/a/o;->k:Ljava/util/List;

    new-instance v1, Lcom/instagram/android/a/p;

    invoke-direct {v1, p0, v5}, Lcom/instagram/android/a/p;-><init>(Lcom/instagram/android/a/o;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/f;

    .line 94
    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v7, p0, Lcom/instagram/android/a/o;->k:Ljava/util/List;

    new-instance v0, Lcom/instagram/android/a/q;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->i()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/a/q;-><init>(Lcom/instagram/android/a/o;Lcom/instagram/android/maps/b/f;ILjava/lang/String;B)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v7, 0x4010

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v0, v5

    .line 104
    :goto_1
    if-ge v0, v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/instagram/android/a/o;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/instagram/android/a/o;->a(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_1
    iget-object v7, p0, Lcom/instagram/android/a/o;->k:Ljava/util/List;

    new-instance v0, Lcom/instagram/android/a/r;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v3

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/a/r;-><init>(Lcom/instagram/android/a/o;Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/b/h;IB)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/a/o;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/android/a/o;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/a/p;

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/a/q;

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/a/r;

    if-eqz v0, :cond_2

    .line 144
    const/4 v0, 0x2

    goto :goto_0

    .line 146
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x4

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method
