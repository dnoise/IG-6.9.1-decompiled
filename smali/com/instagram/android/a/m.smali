.class public final Lcom/instagram/android/a/m;
.super Lcom/instagram/ui/d/a;
.source "RecommendedUserAdapter.java"


# instance fields
.field private final a:Landroid/support/v4/app/an;

.field private final b:Z

.field private final c:Landroid/support/v4/app/s;

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private final j:Lcom/instagram/ui/menu/d;

.field private final m:Lcom/instagram/user/follow/h;

.field private final n:Lcom/instagram/android/a/b/f;

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


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZZZZILcom/instagram/android/a/b/f;Lcom/instagram/user/follow/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->suggested_for_you:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/android/a/m;->j:Lcom/instagram/ui/menu/d;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/m;->o:Ljava/util/Set;

    .line 62
    iput-object p2, p0, Lcom/instagram/android/a/m;->a:Landroid/support/v4/app/an;

    .line 63
    iput-boolean p4, p0, Lcom/instagram/android/a/m;->b:Z

    .line 64
    iput-object p3, p0, Lcom/instagram/android/a/m;->c:Landroid/support/v4/app/s;

    .line 65
    iput-boolean p5, p0, Lcom/instagram/android/a/m;->d:Z

    .line 66
    iput-boolean p6, p0, Lcom/instagram/android/a/m;->e:Z

    .line 67
    iput-boolean p7, p0, Lcom/instagram/android/a/m;->f:Z

    .line 68
    iput-boolean p8, p0, Lcom/instagram/android/a/m;->g:Z

    .line 69
    iput-boolean p9, p0, Lcom/instagram/android/a/m;->h:Z

    .line 70
    iput p10, p0, Lcom/instagram/android/a/m;->i:I

    .line 71
    iput-object p11, p0, Lcom/instagram/android/a/m;->n:Lcom/instagram/android/a/b/f;

    .line 72
    iput-object p12, p0, Lcom/instagram/android/a/m;->m:Lcom/instagram/user/follow/h;

    .line 73
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/android/a/m;->n:Lcom/instagram/android/a/b/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p2}, Lcom/instagram/android/a/m;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/a/m;->m:Lcom/instagram/user/follow/h;

    invoke-static {p1, v0}, Lcom/instagram/android/a/b/ac;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/a/m;->n:Lcom/instagram/android/a/b/f;

    invoke-static {p1, v0}, Lcom/instagram/android/a/b/e;->a(Landroid/content/Context;Lcom/instagram/android/a/b/f;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0, p3}, Lcom/instagram/android/a/m;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/ag;

    iget v2, p0, Lcom/instagram/android/a/m;->i:I

    invoke-virtual {p0, p3}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instagram/user/d/a;

    iget-object v4, p0, Lcom/instagram/android/a/m;->c:Landroid/support/v4/app/s;

    iget-object v5, p0, Lcom/instagram/android/a/m;->a:Landroid/support/v4/app/an;

    iget-boolean v6, p0, Lcom/instagram/android/a/m;->b:Z

    iget-boolean v7, p0, Lcom/instagram/android/a/m;->d:Z

    iget-boolean v8, p0, Lcom/instagram/android/a/m;->e:Z

    iget-boolean v9, p0, Lcom/instagram/android/a/m;->f:Z

    iget-boolean v10, p0, Lcom/instagram/android/a/m;->g:Z

    iget-boolean v11, p0, Lcom/instagram/android/a/m;->h:Z

    move v1, p3

    invoke-static/range {v0 .. v11}, Lcom/instagram/android/a/b/ac;->a(Lcom/instagram/android/a/b/ag;IILcom/instagram/user/d/a;Landroid/support/v4/app/s;Landroid/support/v4/app/an;ZZZZZZ)V

    .line 131
    :goto_0
    return-void

    .line 125
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/g;

    iget-object v1, p0, Lcom/instagram/android/a/m;->n:Lcom/instagram/android/a/b/f;

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/e;->a(Lcom/instagram/android/a/b/g;Lcom/instagram/android/a/b/f;)V

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/instagram/android/a/m;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/d/a;

    .line 167
    iget-object v2, p0, Lcom/instagram/android/a/m;->o:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/a/m;->j:Lcom/instagram/ui/menu/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-virtual {p0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V

    .line 175
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/instagram/android/a/m;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/instagram/android/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/instagram/android/a/m;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/instagram/android/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/a/m;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/instagram/android/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/d;

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x2

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method
