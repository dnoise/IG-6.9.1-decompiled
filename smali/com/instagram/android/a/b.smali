.class public final Lcom/instagram/android/a/b;
.super Lcom/instagram/ui/d/c;
.source "HashtagListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/ui/d/c",
        "<",
        "Lcom/instagram/android/g/c;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/c;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/instagram/android/a/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_no_results:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    sget v0, Lcom/facebook/av;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->no_tags_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-object v1
.end method

.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/instagram/android/a/b/o;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/p;

    invoke-virtual {p0, p3}, Lcom/instagram/android/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/g/c;

    invoke-static {v0, v1, p2}, Lcom/instagram/android/a/b/o;->a(Lcom/instagram/android/a/b/p;Lcom/instagram/android/g/c;Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/a/b;->k:Ljava/util/List;

    return-object v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/a/b;->a:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/instagram/android/a/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/a/c;-><init>(Lcom/instagram/android/a/b;)V

    iput-object v0, p0, Lcom/instagram/android/a/b;->a:Landroid/widget/Filter;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/a/b;->a:Landroid/widget/Filter;

    return-object v0
.end method
