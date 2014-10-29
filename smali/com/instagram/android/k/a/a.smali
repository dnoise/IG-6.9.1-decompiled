.class public Lcom/instagram/android/k/a/a;
.super Lcom/instagram/ui/d/c;
.source "UserListAdapter.java"

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
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:Lcom/instagram/user/follow/h;

.field protected e:Landroid/support/v4/app/an;

.field protected f:Landroid/support/v4/app/s;

.field protected g:Landroid/widget/Filter;

.field protected h:Lcom/instagram/android/k/a/f;

.field protected i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field protected j:Lcom/instagram/user/c/a;

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/instagram/android/k/a/d;

.field private final q:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/user/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v6, 0x0

    new-instance v8, Lcom/instagram/ui/widget/loadmore/f;

    invoke-direct {v8}, Lcom/instagram/ui/widget/loadmore/f;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/instagram/android/k/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZLcom/instagram/user/follow/h;Lcom/instagram/ui/widget/loadmore/c;)V

    .line 137
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZLcom/instagram/user/follow/h;Lcom/instagram/ui/widget/loadmore/c;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1, p8}, Lcom/instagram/ui/d/c;-><init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/k/a/a;->o:Ljava/util/Set;

    .line 260
    new-instance v0, Lcom/instagram/android/k/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/k/a/d;-><init>(Lcom/instagram/android/k/a/a;B)V

    iput-object v0, p0, Lcom/instagram/android/k/a/a;->p:Lcom/instagram/android/k/a/d;

    .line 262
    new-instance v0, Lcom/instagram/android/k/a/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/a/c;-><init>(Lcom/instagram/android/k/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/k/a/a;->q:Lcom/instagram/common/j/e;

    .line 149
    iput-object p2, p0, Lcom/instagram/android/k/a/a;->e:Landroid/support/v4/app/an;

    .line 150
    iput-object p3, p0, Lcom/instagram/android/k/a/a;->f:Landroid/support/v4/app/s;

    .line 151
    iput-boolean p4, p0, Lcom/instagram/android/k/a/a;->a:Z

    .line 152
    iput-boolean p5, p0, Lcom/instagram/android/k/a/a;->b:Z

    .line 153
    iput-boolean p6, p0, Lcom/instagram/android/k/a/a;->c:Z

    .line 154
    iput-object p7, p0, Lcom/instagram/android/k/a/a;->d:Lcom/instagram/user/follow/h;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/k/a/a;->i:Ljava/util/Map;

    .line 157
    iget-boolean v0, p0, Lcom/instagram/android/k/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/k/a/a;->q:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 161
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/k/a/a;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->o:Ljava/util/Set;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/instagram/user/c/a;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 200
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->j:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/k/a/a;->j:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 202
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/instagram/android/k/a/a;->a(Lcom/instagram/user/c/a;)Ljava/util/List;

    move-result-object v9

    .line 203
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/k/a/a;->b()Lcom/instagram/android/k/a/f;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/k/a/j;

    iget-boolean v3, p0, Lcom/instagram/android/k/a/a;->a:Z

    iget-boolean v4, p0, Lcom/instagram/android/k/a/a;->b:Z

    iget-boolean v5, p0, Lcom/instagram/android/k/a/a;->c:Z

    iget-object v7, p0, Lcom/instagram/android/k/a/a;->e:Landroid/support/v4/app/an;

    iget-object v8, p0, Lcom/instagram/android/k/a/a;->f:Landroid/support/v4/app/s;

    new-instance v10, Lcom/instagram/android/k/a/b;

    invoke-direct {v10, p0}, Lcom/instagram/android/k/a/b;-><init>(Lcom/instagram/android/k/a/a;)V

    move-object v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/instagram/android/k/a/f;->a(Lcom/instagram/android/k/a/j;Lcom/instagram/user/c/a;ZZZZLandroid/support/v4/app/an;Landroid/support/v4/app/s;Ljava/util/List;Lcom/instagram/android/i/d;)V

    .line 218
    return-void

    :cond_0
    move v0, v6

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/instagram/android/k/a/a;)Lcom/instagram/android/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->p:Lcom/instagram/android/k/a/d;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/instagram/android/k/a/a;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_no_results:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 176
    sget v0, Lcom/facebook/av;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->no_users_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    return-object v1
.end method

.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/instagram/android/k/a/a;->b()Lcom/instagram/android/k/a/f;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    iget-object v2, p0, Lcom/instagram/android/k/a/a;->d:Lcom/instagram/user/follow/h;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/instagram/android/k/a/f;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/user/c/a;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/user/c/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/instagram/android/i/b;->a(Lcom/instagram/user/c/a;)Ljava/util/List;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/instagram/android/k/a/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0, p3}, Lcom/instagram/android/k/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/k/a/a;->a(Landroid/view/View;Lcom/instagram/user/c/a;)V

    .line 197
    return-void
.end method

.method public final a_(Ljava/util/List;)V
    .locals 3
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
    .line 241
    invoke-super {p0, p1}, Lcom/instagram/ui/d/c;->a_(Ljava/util/List;)V

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 244
    iget-object v2, p0, Lcom/instagram/android/k/a/a;->o:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public b()Lcom/instagram/android/k/a/f;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->h:Lcom/instagram/android/k/a/f;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/instagram/android/k/a/f;

    invoke-direct {v0}, Lcom/instagram/android/k/a/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/k/a/a;->h:Lcom/instagram/android/k/a/f;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->h:Lcom/instagram/android/k/a/f;

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/k/a/a;->q:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 183
    return-void
.end method

.method public final e()Ljava/util/List;
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
    .line 221
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/util/List;
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
    .line 249
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->g:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/instagram/android/k/a/k;

    invoke-direct {v0, p0}, Lcom/instagram/android/k/a/k;-><init>(Lcom/instagram/android/k/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/k/a/a;->g:Landroid/widget/Filter;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/a/a;->g:Landroid/widget/Filter;

    return-object v0
.end method
