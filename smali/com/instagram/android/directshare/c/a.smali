.class public final Lcom/instagram/android/directshare/c/a;
.super Landroid/widget/BaseAdapter;
.source "InboxAdapter.java"

# interfaces
.implements Lcom/instagram/android/feed/e/e;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/instagram/ui/widget/loadmore/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/instagram/android/directshare/c/a;->d:Lcom/instagram/ui/widget/loadmore/c;

    .line 41
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/c/a;->getItemViewType(I)I

    move-result v0

    .line 45
    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported view type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/instagram/android/directshare/c/p;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    sget v1, Lcom/instagram/android/a/b/w;->b:I

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/c/a;->getItemViewType(I)I

    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    iget-object v2, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/c/s;

    invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/d/l;

    invoke-static {v2, v0, v1}, Lcom/instagram/android/directshare/c/p;->a(Landroid/content/Context;Lcom/instagram/android/directshare/c/s;Lcom/instagram/feed/d/l;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 66
    iget-object v2, p0, Lcom/instagram/android/directshare/c/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/u;

    invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/creation/b/a/b;

    invoke-static {v2, v0, v1}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V

    goto :goto_0

    .line 71
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/loadmore/e;

    iget-object v1, p0, Lcom/instagram/android/directshare/c/a;->d:Lcom/instagram/ui/widget/loadmore/c;

    invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V

    goto :goto_0
.end method

.method private a(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 172
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->C()I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/a;->a(Lcom/instagram/feed/d/l;)V

    .line 93
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 128
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->d:Lcom/instagram/ui/widget/loadmore/c;

    .line 137
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/c/a;->getItemViewType(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    instance-of v1, v0, Lcom/instagram/feed/d/l;

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_0
    instance-of v1, v0, Lcom/instagram/creation/b/a/b;

    if-eqz v1, :cond_1

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    instance-of v0, v0, Lcom/instagram/ui/widget/loadmore/c;

    if-eqz v0, :cond_2

    .line 162
    const/4 v0, 0x2

    goto :goto_0

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 148
    invoke-direct {p0, p1, p3}, Lcom/instagram/android/directshare/c/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 150
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/instagram/android/directshare/c/a;->a(Landroid/view/View;I)V

    .line 151
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x3

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/directshare/c/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/a;->b()V

    .line 181
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method
