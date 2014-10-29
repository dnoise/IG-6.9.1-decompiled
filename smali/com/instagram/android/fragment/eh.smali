.class public final Lcom/instagram/android/fragment/eh;
.super Lcom/instagram/android/fragment/ea;
.source "SearchTagsFragment.java"


# instance fields
.field private a:Lcom/instagram/android/c/a/d;

.field private b:Lcom/instagram/android/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/fragment/ea;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/eh;)Lcom/instagram/android/a/b;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->b:Lcom/instagram/android/a/b;

    return-object v0
.end method


# virtual methods
.method protected final V()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/facebook/az;->search_for_a_tag:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ea;->a(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/instagram/android/c/a/d;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/ei;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ei;-><init>(Lcom/instagram/android/fragment/eh;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/c/a/d;

    .line 53
    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/instagram/android/g/c;

    .line 89
    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->c()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b;

    invoke-virtual {v0}, Lcom/instagram/android/a/b;->b()Ljava/util/List;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 92
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/g/c;

    invoke-virtual {v0}, Lcom/instagram/android/g/c;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->c()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    invoke-virtual {v7}, Lcom/instagram/android/g/c;->a()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->ad()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7}, Lcom/instagram/android/g/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/j/c;->a(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v7}, Lcom/instagram/android/g/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->r()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/fragment/cf;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->c()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/c/a/d;

    invoke-virtual {v0, p1}, Lcom/instagram/android/c/a/d;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/instagram/android/fragment/ef;->a:I

    return v0
.end method

.method protected final c()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->b:Lcom/instagram/android/a/b;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/instagram/android/a/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eh;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/eh;->b:Lcom/instagram/android/a/b;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->b:Lcom/instagram/android/a/b;

    return-object v0
.end method

.method protected final d()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/eh;->b:Lcom/instagram/android/a/b;

    invoke-virtual {v0}, Lcom/instagram/android/a/b;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "search_tags"

    return-object v0
.end method
