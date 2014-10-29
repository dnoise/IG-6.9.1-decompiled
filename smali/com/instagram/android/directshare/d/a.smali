.class final Lcom/instagram/android/directshare/d/a;
.super Landroid/widget/BaseAdapter;
.source "DirectSharePermalinkAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instagram/android/directshare/d/b;

.field private final c:Lcom/instagram/android/feed/a/a/ah;

.field private final d:Lcom/instagram/android/feed/a/b/x;

.field private final e:Lcom/instagram/feed/comments/a/a;

.field private f:Lcom/instagram/feed/d/l;

.field private g:Lcom/instagram/model/b/a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/instagram/android/directshare/d/b;Lcom/instagram/android/feed/a/a/ah;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/instagram/android/directshare/d/a;->b:Lcom/instagram/android/directshare/d/b;

    .line 47
    iput-object p3, p0, Lcom/instagram/android/directshare/d/a;->c:Lcom/instagram/android/feed/a/a/ah;

    .line 48
    new-instance v0, Lcom/instagram/android/feed/a/b/x;

    invoke-direct {v0, p1, p2}, Lcom/instagram/android/feed/a/b/x;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/a/b/ab;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->d:Lcom/instagram/android/feed/a/b/x;

    .line 49
    new-instance v0, Lcom/instagram/feed/comments/a/a;

    invoke-direct {v0, p2}, Lcom/instagram/feed/comments/a/a;-><init>(Lcom/instagram/feed/comments/a/g;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->e:Lcom/instagram/feed/comments/a/a;

    .line 50
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/d/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->d:Lcom/instagram/android/feed/a/b/x;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/instagram/android/feed/a/b/x;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/instagram/android/directshare/d/aj;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILandroid/view/View;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/d/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/feed/a/b/ac;

    .line 135
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->d:Lcom/instagram/android/feed/a/b/x;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;

    iget-object v4, p0, Lcom/instagram/android/directshare/d/a;->c:Lcom/instagram/android/feed/a/a/ah;

    iget-object v5, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;

    invoke-interface {v4, p1, v5}, Lcom/instagram/android/feed/a/a/ah;->a(ILcom/instagram/feed/d/l;)I

    move-result v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/x;->a(Lcom/instagram/android/feed/a/b/ac;Lcom/instagram/feed/d/l;IZI)V

    .line 144
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 115
    iget-object v2, p0, Lcom/instagram/android/directshare/d/a;->e:Lcom/instagram/feed/comments/a/a;

    iget-object v4, p0, Lcom/instagram/android/directshare/d/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/comments/a/h;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/a;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v2, v4, v1, v0, v3}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;Z)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->g:Lcom/instagram/model/b/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/a;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/a;->b:Lcom/instagram/android/directshare/d/b;

    invoke-static {p2, v0, v1, v2}, Lcom/instagram/android/directshare/d/aj;->a(Landroid/view/View;Lcom/instagram/model/b/a;Ljava/util/List;Lcom/instagram/android/directshare/d/am;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;

    .line 54
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->al()Lcom/instagram/model/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->g:Lcom/instagram/model/b/a;

    .line 55
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->am()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/d/a;->h:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->D()Lcom/instagram/feed/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/directshare/d/a;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/d/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->f:Lcom/instagram/feed/d/l;

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->i:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/directshare/d/a;->h:Ljava/util/List;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 164
    if-le p1, v0, :cond_1

    .line 165
    const/4 v0, 0x2

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    if-eq p1, v0, :cond_0

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    invoke-direct {p0, p1, p3}, Lcom/instagram/android/directshare/d/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/d/a;->a(ILandroid/view/View;)V

    .line 154
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x3

    return v0
.end method
