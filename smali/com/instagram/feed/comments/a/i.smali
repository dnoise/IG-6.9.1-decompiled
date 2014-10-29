.class public final Lcom/instagram/feed/comments/a/i;
.super Lcom/instagram/ui/d/a;
.source "CommentThreadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/ui/d/a",
        "<",
        "Lcom/instagram/feed/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/ui/widget/loadmore/c;

.field private final b:Lcom/instagram/feed/comments/a/a;

.field private c:Lcom/instagram/feed/d/l;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;Lcom/instagram/feed/comments/a/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/instagram/feed/comments/a/i;->a:Lcom/instagram/ui/widget/loadmore/c;

    .line 42
    new-instance v0, Lcom/instagram/feed/comments/a/a;

    invoke-direct {v0, p3}, Lcom/instagram/feed/comments/a/a;-><init>(Lcom/instagram/feed/comments/a/g;)V

    iput-object v0, p0, Lcom/instagram/feed/comments/a/i;->b:Lcom/instagram/feed/comments/a/a;

    .line 43
    return-void
.end method

.method private a(I)Lcom/instagram/feed/d/b;
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/instagram/feed/comments/a/i;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->e:Z

    if-nez v0, :cond_1

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/ui/d/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 50
    :goto_0
    return-object v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/instagram/ui/d/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/instagram/feed/comments/a/i;->e:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p2}, Lcom/instagram/feed/comments/a/i;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No item view type found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_0
    invoke-static {p1, p3}, Lcom/instagram/feed/comments/a/a;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :pswitch_1
    invoke-static {p1, p3}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-static {p1, p3}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p3}, Lcom/instagram/feed/comments/a/i;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/instagram/feed/comments/a/i;->a(I)Lcom/instagram/feed/d/b;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/instagram/feed/comments/a/i;->b:Lcom/instagram/feed/comments/a/a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/comments/a/h;

    invoke-virtual {p0}, Lcom/instagram/feed/comments/a/i;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, p2, v0, v2, v1}, Lcom/instagram/feed/comments/a/a;->a(Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/loadmore/e;

    iget-object v1, p0, Lcom/instagram/feed/comments/a/i;->a:Lcom/instagram/ui/widget/loadmore/c;

    invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-object p1, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;

    .line 92
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->e:Z

    .line 93
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->D()Lcom/instagram/feed/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->i()I

    move-result v0

    sget v2, Lcom/instagram/feed/d/d;->b:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->d:Z

    .line 96
    invoke-virtual {p0}, Lcom/instagram/feed/comments/a/i;->notifyDataSetChanged()V

    .line 97
    return-void

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/instagram/feed/comments/a/i;->e:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/instagram/feed/comments/a/i;->a(I)Lcom/instagram/feed/d/b;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 126
    iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->d:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 128
    const/4 v0, 0x2

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->d:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/instagram/feed/comments/a/i;->d:Z

    if-eqz v1, :cond_3

    if-eq p1, v0, :cond_0

    .line 135
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x3

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->b()V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/instagram/ui/d/a;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/instagram/feed/comments/a/i;->c:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->b()V

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/instagram/ui/d/a;->notifyDataSetInvalidated()V

    .line 113
    return-void
.end method
