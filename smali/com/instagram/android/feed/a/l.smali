.class public final Lcom/instagram/android/feed/a/l;
.super Lcom/instagram/android/feed/a/a;
.source "MainFeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/feed/e/e;


# instance fields
.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/instagram/feed/a/e;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    .line 40
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->a()Lcom/instagram/feed/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->a()Lcom/instagram/feed/f/c;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/android/a/b/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 154
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->a()Lcom/instagram/feed/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/j;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/e/b;

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/h;->a(Lcom/instagram/android/a/b/j;Lcom/instagram/feed/e/b;)V

    .line 158
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->b()Lcom/instagram/feed/f/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->b()Lcom/instagram/feed/f/c;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/feed/e/a/a/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v3

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->b()Lcom/instagram/feed/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/e/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->z()Landroid/support/v4/app/an;

    move-result-object v4

    iget-object v1, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v1}, Lcom/instagram/feed/a/e;->b()Lcom/instagram/feed/f/c;

    move-result-object v5

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/e/a;

    invoke-static {v3, v0, v4, v5, v1}, Lcom/instagram/feed/e/a/a/a;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;Lcom/instagram/feed/e/a;)V

    .line 169
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->c()Lcom/instagram/feed/f/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->c()Lcom/instagram/feed/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v1}, Lcom/instagram/feed/a/e;->c()Lcom/instagram/feed/f/c;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/instagram/android/a/b/x;->a(Landroid/content/Context;Lcom/instagram/feed/f/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/instagram/android/feed/a/l;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->c()Lcom/instagram/feed/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/f/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/ab;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->c()Lcom/instagram/android/fragment/a;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/e/b;

    invoke-static {v3, v0, v1}, Lcom/instagram/android/a/b/x;->a(Landroid/content/Context;Lcom/instagram/android/a/b/ab;Lcom/instagram/feed/e/b;)V

    .line 179
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    :cond_2
    return-void
.end method

.method private s()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private t()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/a/l;->getItemViewType(I)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 111
    sget v0, Lcom/instagram/android/a/b/w;->a:I

    invoke-static {p1, v0}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 113
    invoke-static {p1}, Lcom/instagram/android/feed/a/l;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/l;->getItemViewType(I)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/u;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/creation/b/a/b;

    invoke-static {p1, v0, v1}, Lcom/instagram/android/a/b/q;->a(Landroid/content/Context;Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 135
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/l;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/instagram/feed/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    .line 186
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public final a(Lcom/instagram/feed/f/d;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    invoke-virtual {v0, p1}, Lcom/instagram/feed/a/e;->a(Lcom/instagram/feed/f/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V

    .line 193
    :cond_0
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
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 49
    :goto_0
    iput-object p1, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V

    .line 54
    :cond_1
    return-void

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/instagram/feed/d/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/feed/g/b;->a()Lcom/instagram/feed/g/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/g/b;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

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
    .line 71
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->s()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->f:Lcom/instagram/feed/a/e;

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/l;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->s()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/l;->k()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 95
    instance-of v1, v0, Lcom/instagram/creation/b/a/b;

    if-eqz v1, :cond_1

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    instance-of v0, v0, Lcom/instagram/feed/a/e;

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/android/feed/a/l;->f(I)I

    move-result v0

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled instance type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/instagram/android/feed/a/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final k()I
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->s()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/android/feed/a/l;->t()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
