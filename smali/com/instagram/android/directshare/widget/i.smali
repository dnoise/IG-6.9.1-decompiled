.class public final Lcom/instagram/android/directshare/widget/i;
.super Lcom/instagram/ui/d/c;
.source "DirectShareUserListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/ui/d/c",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/android/directshare/widget/j;

.field private b:Lcom/instagram/creation/b/a/b;

.field private c:Lcom/instagram/android/directshare/widget/k;

.field private d:Landroid/widget/Filter;

.field private e:Z

.field private final f:Lcom/instagram/ui/menu/d;

.field private final g:Lcom/instagram/ui/menu/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/directshare/widget/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/c;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->directshare_user_list_header_suggestions:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->f:Lcom/instagram/ui/menu/d;

    .line 55
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->directshare_user_list_header_following:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->g:Lcom/instagram/ui/menu/d;

    .line 60
    iput-object p2, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    .line 61
    return-void
.end method

.method private c(I)I
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->e()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 148
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)I
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->V()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->e()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 209
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 211
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I

    move-result v0

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 211
    add-int/lit8 v0, p1, -0x2

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot adjust for headers."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, -0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, -0x1

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private h()I
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v1}, Lcom/instagram/android/directshare/widget/j;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v1}, Lcom/instagram/android/directshare/widget/j;->V()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_1
    return v0
.end method

.method private i()Lcom/instagram/android/directshare/widget/k;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->c:Lcom/instagram/android/directshare/widget/k;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/instagram/android/directshare/widget/k;

    invoke-direct {v0}, Lcom/instagram/android/directshare/widget/k;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->c:Lcom/instagram/android/directshare/widget/k;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->c:Lcom/instagram/android/directshare/widget/k;

    return-object v0
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->directshare_row_no_results:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->i()Lcom/instagram/android/directshare/widget/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/widget/k;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-virtual {p0, p3}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->i()Lcom/instagram/android/directshare/widget/k;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/widget/l;

    invoke-virtual {p0, p3}, Lcom/instagram/android/directshare/widget/i;->b(I)Lcom/instagram/user/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/widget/i;->b:Lcom/instagram/creation/b/a/b;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/directshare/widget/k;->a(Lcom/instagram/android/directshare/widget/l;Lcom/instagram/user/c/a;Lcom/instagram/creation/b/a/b;)V

    .line 116
    :goto_0
    :pswitch_1
    return-void

    .line 110
    :pswitch_2
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->e()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->f:Lcom/instagram/ui/menu/d;

    :goto_1
    invoke-static {p1, v0, v1, v1}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->g:Lcom/instagram/ui/menu/d;

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/directshare/widget/i;->b:Lcom/instagram/creation/b/a/b;

    .line 65
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
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->notifyDataSetChanged()V

    .line 280
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/instagram/android/directshare/widget/i;->e:Z

    .line 268
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Lcom/instagram/user/c/a;
    .locals 2
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot getItem() on a header row."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z

    if-nez v0, :cond_1

    .line 199
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/widget/i;->d(I)I

    move-result p1

    .line 201
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/ui/d/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;

    invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->W()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->h()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->d:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/instagram/android/directshare/widget/h;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/widget/h;-><init>(Lcom/instagram/android/directshare/widget/i;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->d:Landroid/widget/Filter;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->d:Landroid/widget/Filter;

    return-object v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/widget/i;->b(I)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported item view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->d()I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/widget/i;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 248
    iget-boolean v1, p0, Lcom/instagram/android/directshare/widget/i;->e:Z

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->e()I

    move-result v1

    if-eq p1, v1, :cond_2

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
