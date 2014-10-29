.class public abstract Lcom/instagram/ui/d/a;
.super Landroid/widget/BaseAdapter;
.source "EnhancedArrayAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/d/a;->k:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/instagram/ui/d/a;->l:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract a(Landroid/view/View;Landroid/content/Context;I)V
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/ui/d/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/ui/d/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/instagram/ui/d/a;,"Lcom/instagram/ui/d/a<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/ui/d/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/instagram/ui/d/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    .local p0, this:Lcom/instagram/ui/d/a;,"Lcom/instagram/ui/d/a<TT;>;"
    if-nez p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/instagram/ui/d/a;->l:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p3}, Lcom/instagram/ui/d/a;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    .end local p2
    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/d/a;->l:Landroid/content/Context;

    invoke-virtual {p0, p2, v0, p1}, Lcom/instagram/ui/d/a;->a(Landroid/view/View;Landroid/content/Context;I)V

    .line 57
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/ui/d/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
